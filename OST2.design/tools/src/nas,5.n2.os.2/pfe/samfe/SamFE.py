"""Utilities needed to emulate Python's interactive interpreter.
"""
#
# copied from RiesCode.py, for cosim & sam environment
#

import os, re, string, sys, time, types

from Pfe_Conversion import *
from Pfe_Assembler import *

no_sam = 0
try:
    import sam
except:
    no_sam = 1

import traceback
from codeop import CommandCompiler, compile_command

__all__ = ["InteractiveInterpreter", "InteractiveConsole", "interact",
           "compile_command"]

# constants
PLI_RUN         = 'pli-run'
QUIT            = 'quit'
RUN_PYTHON_FILE = 'run-python-file'

DONE     = 1
DONE_NOT = 0

# when 1, ignore any exception associated with a wrong python statement
IGNORE_EXCEPT = 0

SIM = 'sim'
RSYS   = 'rsys'
CPU    = 'cpu'
CORE   = 'core'
UCORE  = 'ucore'
STRAND = 'strand'

# regular expression used to catch execfile() command
execfileRE = re.compile("^execfile(\s)*\([^\(\)]+\)$")
NEW_CMD_RE = re.compile('^@?new_command\s*\(')
DIGITAL_RE = re.compile('^[0-9]+$')

RC_SYS_CONFIG_OBJ = 'config0'
RC_PROMPT         = 'prompt'
RC_MEM_IMAGE      = 'mem_image'
RC_COMMAND        = 'command'
RC_COMMAND_EXT    = 'command_ext'
RC_FUNC_DEF       = 'func_def'


def softspace(file, newvalue):
    oldvalue = 0
    try:
        oldvalue = file.softspace
    except AttributeError:
        pass
    try:
        file.softspace = newvalue
    except (AttributeError, TypeError):
        # "attribute-less object" or "read-only attributes"
        pass
    return oldvalue

class InteractiveInterpreter:
    """Base class for InteractiveConsole.

    This class deals with parsing and interpreter state (the user's
    namespace); it doesn't deal with input buffering or prompting or
    input file naming (the filename is always passed in explicitly).

    """

    def __init__(self, locals=None):
        """Constructor.

        The optional 'locals' argument specifies the dictionary in
        which code will be executed; it defaults to a newly created
        dictionary with key "__name__" set to "__console__" and key
        "__doc__" set to None.

        """
        if locals is None:
            locals = {"__name__": "__console__", "__doc__": None}
        self.locals = locals
        self.compile = CommandCompiler()

    def runsource(self, source, filename="<input>", symbol="single"):
        """Compile and run some source in the interpreter.

        Arguments are as for compile_command().

        One several things can happen:

        1) The input is incorrect; compile_command() raised an
        exception (SyntaxError or OverflowError).  A syntax traceback
        will be printed by calling the showsyntaxerror() method.

        2) The input is incomplete, and more input is required;
        compile_command() returned None.  Nothing happens.

        3) The input is complete; compile_command() returned a code
        object.  The code is executed by calling self.runcode() (which
        also handles run-time exceptions, except for SystemExit).

        The return value is 1 in case 2, 0 in the other cases (unless
        an exception is raised).  The return value can be used to
        decide whether to use sys.ps1 or sys.ps2 to prompt the next
        line.

        """
	global IGNORE_EXCEPT

        try:
            code = self.compile(source, filename, symbol)
        except (OverflowError, SyntaxError, ValueError):
            # Case 1
	    if IGNORE_EXCEPT != 1:
		self.showsyntaxerror(filename)
	    else:
		raise
            return 0

        if code is None:
            # Case 2
            return 1

        # Case 3
        self.runcode(code)
        return 0

    def runcode(self, code):
        """Execute a code object.

        When an exception occurs, self.showtraceback() is called to
        display a traceback.  All exceptions are caught except
        SystemExit, which is reraised.

        A note about KeyboardInterrupt: this exception may occur
        elsewhere in this code, and may not always be caught.  The
        caller should be prepared to deal with it.

        """
	global IGNORE_EXCEPT

        try:
            exec code in self.locals
        except SystemExit:
	    sys.stderr.write("# %s: end riesling frontend\n" % (time.ctime()))
            raise
## 	except AttributeError:
## 	    raise
        except:
	    if IGNORE_EXCEPT != 1:
		self.showtraceback()
	    else:
		raise
        else:
            if softspace(sys.stdout, 0):
                print

    def showsyntaxerror(self, filename=None):
        """Display the syntax error that just occurred.

        This doesn't display a stack trace because there isn't one.

        If a filename is given, it is stuffed in the exception instead
        of what was there before (because Python's parser always uses
        "<string>" when reading from a string).

        The output is written by self.write(), below.

        """
        type, value, sys.last_traceback = sys.exc_info()
        sys.last_type = type
        sys.last_value = value
        if filename and type is SyntaxError:
            # Work hard to stuff the correct filename in the exception
            try:
                msg, (dummy_filename, lineno, offset, line) = value
            except:
                # Not the format we expect; leave it alone
                pass
            else:
                # Stuff in the right filename
                try:
                    # Assume SyntaxError is a class exception
                    value = SyntaxError(msg, (filename, lineno, offset, line))
                except:
                    # If that failed, assume SyntaxError is a string
                    value = msg, (filename, lineno, offset, line)
                sys.last_value = value
        list = traceback.format_exception_only(type, value)
        map(self.write, list)

    def showtraceback(self):
        """Display the exception that just occurred.

        We remove the first stack item because it is our own code.

        The output is written by self.write(), below.

        """
        try:
            type, value, tb = sys.exc_info()
            sys.last_type = type
            sys.last_value = value
            sys.last_traceback = tb
            tblist = traceback.extract_tb(tb)
            del tblist[:1]
            list = traceback.format_list(tblist)
            if list:
                list.insert(0, "Traceback (most recent call last):\n")
            list[len(list):] = traceback.format_exception_only(type, value)
        finally:
            tblist = tb = None
        map(self.write, list)

    def write(self, data):
        """Write a string.

        The base implementation writes to sys.stderr; a subclass may
        replace this with a different implementation.

        """
        sys.stderr.write(data)


class InteractiveConsole(InteractiveInterpreter):
    """Closely emulate the behavior of the interactive Python interpreter.

    This class builds on InteractiveInterpreter and adds prompting
    using the familiar sys.ps1 and sys.ps2, and input buffering.

    """

    def __init__(self, locals=None, filename="<console>"):
        """Constructor.

        The optional locals argument will be passed to the
        InteractiveInterpreter base class.

        The optional filename argument should specify the (file)name
        of the input stream; it will show up in tracebacks.

        """
        InteractiveInterpreter.__init__(self, locals)
        self.filename = filename
        self.resetbuffer()

    def resetbuffer(self):
        """Reset the input buffer."""
        self.buffer = []

    def interact(self, banner=None, **parms):
        """Closely emulate the interactive Python console.

        The optional banner argument specify the banner to print
        before the first interaction; by default it prints a banner
        similar to the one printed by the real Python interpreter,
        followed by the current class name in parentheses (so as not
        to confuse this with the real interpreter -- since it's so
        close!).

        """
	global optdir
	global rcCmd

	#sys.stderr.write("#DBX %s: enter InteractiveConsole.interact()\n" % (time.ctime()))

	# connect to command parser
	self.parser = parms['parser']

## 	# if there are good_trap and/or bad_trap in symbol file, register
## 	# those as breakpoints
## 	# TODO  by default, no breakpoint for good/bad_trap is set in sam,
## 	#       we need an option to allow setting of those breakpoints.
## 	if parms['reposit'].symTable and not optdir.has_key('--blaze'):
## 	    trapList = parms['reposit'].symTable.getTraps()
## 	    for (trap,vaddr) in trapList:
## 		cmd = 'break %#x' % (vaddr)
## 		if self.parser.parseCmd(cmd, **parms):
## 		    sys.stderr.write('ERROR: un-expected return value from parseCmd()\n')

	# if there are command(s) specified in config, execute those first
	_configRC = None
	if parms.has_key('confRC'):
	    _configRC = parms['confRC']

	tmp = '.rs_config_cmd'
	fdtmp = open(tmp, 'w')
	if _configRC:
	    if _configRC.getObjData(ReadConfigDiag.TYPE_SYS_CONFIG, RC_SYS_CONFIG_OBJ, RC_COMMAND, silent=1):
		#sys.stderr.write("# %s: process config/init cmd\n" % (time.ctime()))
		for cmd in _configRC.getObjData(ReadConfigDiag.TYPE_SYS_CONFIG, RC_SYS_CONFIG_OBJ, RC_COMMAND):
		    cmd = cmd.strip()
		    # if get_addr() is part of the command, better resolve
		    # that here, so we don't need to worry about that later
		    # when execute the command
		    index = cmd.find('get_addr')
		    if index > -1:
			lop = cmd[:index]
			rop = cmd[index:]
			try:
			    cmd = '%s%s' % (lop, eval(rop))
			except:
			    pass
		    fdtmp.write('%s\n' % (cmd))

	for cmd in rcCmd:
	    fdtmp.write('%s\n' % (cmd))

	fdtmp.close()
	# execute the commands specified in config file, if a command
	# cannot be run, just ignore it.
	self.parseExecfile('execfile("%s")' % (tmp), ignore=1, **parms)
	#sys.stderr.write("# %s: DBX: done config/init cmd\n" % (time.ctime()))

	# set prompt symbol
	if _configRC:
	    prompt = _configRC.getObjData(ReadConfigDiag.TYPE_SYS_CONFIG, RC_SYS_CONFIG_OBJ, RC_PROMPT)
	else:
	    prompt = 'sam'

	parms['reposit'].prompt = prompt

        try:
            sys.ps1
        except AttributeError:
            sys.ps1 = "%s>>> " % (prompt)

        try:
            sys.ps2
        except AttributeError:
            sys.ps2 = "%s... " % (prompt)

        try:
            sys.ps3
	except AttributeError:
            sys.ps3 = "%s!!! " % (prompt)

        cprt = 'Type "copyright", "credits" or "license" for more information.'
        if banner is None:
            self.write("Python %s on %s\n%s\n(%s)\n" %
                       (sys.version, sys.platform, cprt,
                        self.__class__.__name__))
        else:
            #self.write("# %s: %s\n" % (time.ctime(), str(banner)))
	    pass

        more = 0
        while 1:
            try:
                if more:
                    prompt = sys.ps2
                elif no_sam == 1:
                    prompt = sys.ps1
	        elif (no_sam == 0) and sam.is_stopped():
                    prompt = sys.ps1
                else:
		    prompt = sys.ps3

                try:
                    line = self.raw_input(prompt)
                except EOFError:
                    self.write("\n")
                    break
                else:
		    line = self.parser.parseCmd(line, **parms)
		    if line != None:
			# most excepts are handled by push() and its inner
			# methods, so we won't see them here.
			if re.match(execfileRE, line):
			    try:
				more = self.parseExecfile(line, **parms)
			    except SystemExit:
				raise
			    except:
				more = self.push(line)
			else:
			    more = self.push(line)
		    else:
			# to play it safe, flush out buffer when parser returns
			# None
			self.resetbuffer()
			more = 0

            except KeyboardInterrupt:
                self.write("\nKeyboardInterrupt\n")
                self.resetbuffer()
                more = 0

    def push(self, line):
        """Push a line to the interpreter.

        The line should not have a trailing newline; it may have
        internal newlines.  The line is appended to a buffer and the
        interpreter's runsource() method is called with the
        concatenated contents of the buffer as source.  If this
        indicates that the command was executed or invalid, the buffer
        is reset; otherwise, the command is incomplete, and the buffer
        is left as it was after the line was appended.  The return
        value is 1 if more input is required, 0 if the line was dealt
        with in some way (this is the same as runsource()).

        """
        self.buffer.append(line)
        source = "\n".join(self.buffer)
        more = self.runsource(source, self.filename)
        if not more:
            self.resetbuffer()
        return more

    def raw_input(self, prompt=""):
        """Write a prompt and read a line.

        The returned line does not include the trailing newline.
        When the user enters the EOF key sequence, EOFError is raised.

        The base implementation uses the built-in function
        raw_input(); a subclass may replace this with a different
        implementation.

        """
        #return raw_input(prompt)
	line = raw_input(prompt)
	if re.match(NEW_CMD_RE, line):
	    if line.startswith('@'):
		line = line[1:]
	    newlist = [ line ]
	    if not line.strip().endswith(')'):
		line = raw_input(prompt)
		while line.strip() and not line.strip().endswith(')'):
		    newlist.append(line)
		    line = raw_input(prompt)
		# remember to include the last line ending with ')'
		newlist.append(line)
	    return ' '.join(newlist)
	else:
	    return line


    def parseExecfile (self, cmdLine, ignore=0, **parms):
	"""execfile() bypasses riesling cmd parser by default, so we have
	to intercept the execfile() command, and process its content line
	by line.
	"""
	global IGNORE_EXCEPT

	current_ignore_except = IGNORE_EXCEPT
	IGNORE_EXCEPT = ignore

	try:
	    self._parseExecfile(cmdLine, ignore=ignore, **parms)
	except SystemExit:
	    self.resetbuffer()
	    raise
	except Exception, ex:
	    self.resetbuffer()
	    if ignore == 0:
		raise
	    else:
		#sys.stderr.write('DBX: RiesCodeN2::parseExecfile: ignore <%s>, ex=%s\n' % (cmdLine, ex))
		pass

	IGNORE_EXCEPT = current_ignore_except


    def _parseExecfile (self, cmdLine, ignore=0, **parms):
	"""execfile() bypasses riesling cmd parser by default, so we have
	to intercept the execfile() command, and process its content line
	by line.
	"""
	global parser

	# the cmdLine is expected to be in the format of "execfile('zzz')"
	lindex = cmdLine.find('(')
	rindex = cmdLine.find(')')
	filename = eval(cmdLine[lindex+1:rindex].strip())

	fin = open(filename)
	lineBuffer = [ ]
	for line in fin.readlines():
	    if line and line.startswith('def '):
		# a new function definition
		# CmdParserNi::registerDoc (self, key, fname, type, shortdoc, longdoc)
		defline = line.strip()
		ii = defline.rfind(':')
		if ii > -1:
		    defline = defline[4:ii].strip()
		defkey = defline
		jj = defkey.find('(')
		if jj > -1:
		    defkey = defkey[:jj].strip()
		parser.registerDoc(defkey, defline, '@DEF', filename+' : @def '+defline, None)
	    # continue reading & concatenating line(s) until a complete
	    # expression is formed. Remember to remove trailing newline
	    if line[-1] == '\n':
		line = line[:-1]

	    if (line != '') and (line[-1] == "\\"):
		# exclude the trailing "\"
		lineBuffer.append(line[:-1])
	    else:
		if len(lineBuffer) > 0:
		    # make sure we include the last line of an expression
		    lineBuffer.append(line)
		    line = ' '.join(lineBuffer)
		    lineBuffer = [ ]

		# keep track of leading whitespace
		i, n = 0, len(line)
		while (i < n) and (line[i] in string.whitespace): 
		    i = i + 1
		indent = line[:i]
		cmd = line[i:]
		# if see nested execfile(), handle that recursively
		if re.match(execfileRE, cmd):
		    try:
			self.parseExecfile(cmd, ignore=ignore, **parms)
		    except Exception, ex:
			if ignore == 0:
			    more = self.push(cmd)
			else:
			    #sys.stderr.write('DBX: RiesCodeN2::_parseExecfile: ignore <%s>, ex=%s\n' % (cmd, ex))
			    self.resetbuffer()
		else:
		    # if not an execfile(), parse the line, then add back the 
		    # leading whitespace
		    try:
			cmd = self.parser.parseCmd(cmd, **parms)
			if cmd != None:
			    # for run-command-file and run-python-file
			    # commands, parser will return execfile(file-name),
			    # since the file may contains frontend commands,
			    # so we must pass them through parser line by line.
			    if re.match(execfileRE, cmd):
				self.parseExecfile(cmd, ignore=ignore, **parms)
			    else:
				newCmd = indent + cmd
				more = self.push(newCmd)
			else:
			    self.resetbuffer()
			    more = 0

		    except SystemExit:
			# if it is an exit signal, go with it.
			raise
		    except Exception, ex:
			if ignore == 0:
			    # report the error
			    more = self.push(indent + 'raise')
			else:
			    #sys.stderr.write('DBX: RiesCodeN2::_parseExecfile: ignore <%s>, ex2=%s\n' % (cmd, ex))
			    self.resetbuffer()

	fin.close()
	# send in an extra newline to close the last definition in the file.
	more = self.push("\n")


def interact(banner=None, readfunc=None, local=None, **parms):
    """Closely emulate the interactive Python interpreter.

    This is a backwards compatible interface to the InteractiveConsole
    class.  When readfunc is not specified, it attempts to import the
    readline module to enable GNU readline if it is available.

    Arguments (all optional, all default to None):

    banner -- passed to InteractiveConsole.interact()
    readfunc -- if not None, replaces InteractiveConsole.raw_input()
    local -- passed to InteractiveInterpreter.__init__()

    """
    console = InteractiveConsole(local)
    if readfunc is not None:
        console.raw_input = readfunc
    else:
        try:
            import readline
        except:
            pass
    console.interact(banner, **parms)


def usage():
    """
    """
    print
    print "usage: python %s [options]" % (sys.argv[0])
    print "options:"
    print "\t -c conf-file       # diag configuration file"
    print "\t -h                 # this usage information"
    #print "\t -s backend-config  # riesling backend configuration file"
    print "\t -x conf-file       # riesling configuration file"
    print "\t -p python-file       # python configuration file to be executed at startup"
    print "\t --blaze system     # type of system, n2"
    print "\t --blazeopt \"blaze options\"   # blaze runtime options"
    print "\t --ar system        # type of system, n2, ignore if --blaze is used"
    print "\t --rc riesling-rc   # riesling config, a combination of -c & -x"
    print
    sys.exit()


def dbxTraceBack():
    """
    """
    try:
	type, value, tb = sys.exc_info()
	sys.last_type = type
	sys.last_value = value
	sys.last_traceback = tb
	tblist = traceback.extract_tb(tb)
	del tblist[:1]
	list = traceback.format_list(tblist)
	if list:
	    list.insert(0, "Traceback (most recent call last):\n")
	list[len(list):] = traceback.format_exception_only(type, value)
    finally:
	tblist = tb = None
    
    for line in list:
	sys.stderr.write('%s' % line)


def createSystem (optdir):
    """invoke backend system constructor
    """
    #sys.stderr.write("# %s: create riesling.sys\n" % (time.ctime()))

    global rsys
    global sim
    global ncpus
    global ncores
    global nucores
    global nstrands
    global nstrandObjs

    # if --blaze is specified, use that, otherwise use --ar
    if optdir.has_key('--blaze'):
	if optdir['--blaze'] == 'n2':
	    optdir['--ar'] = 'n2'
	else:
	    sys.stderr.write('ERROR: unknown system %s\n' % (optdir['--blaze']))
	    sys.exit()

    if optdir['--ar'] == 'n2':
        initN2()
    else:
        sys.stderr.write('ERROR: unknown system %s\n' % (optdir['--ar']))
        sys.exit()

    if nucores == 0:
	nstrandObjs = ncpus * ncores * nstrands
	#sys.stderr.write('# %s: sys=%s=(cpu,core,strand)=(%d,%d,%d)\n' % (time.ctime(), optdir['--ar'].upper(), ncpus, ncores, nstrands))
    else:
	nstrandObjs = ncpus * ncores * nucores * nstrands
	#sys.stderr.write('# %s: sys=(cpu,core,ucore,strand)=(%d,%d,%d,%d)\n' % (time.ctime(), ncpus, ncores, nucores, nstrands))

    #sys.stderr.write("# %s: done creating riesling.sys\n" % (time.ctime()))


def initN2 ():
    """init N2 structure/variables
    """
    #sys.stderr.write("#DBX %s: initN2\n" % (time.ctime()))

    global rsys
    global sim

    sim = rsys
    initGenericN2(rsys)
    initN2_specific(rsys)


def initN2_specific(rsys):
    """special setting for N2
    """
    #sys.stderr.write("#DBX %s: initN2_specific\n" % (time.ctime()))

    global optdir
    global configRC

    # cmp infomration in .riesling.rc
    ## OBJECT swvmem0 TYPE swerver-memory {
    ## 	debug_level : 0
    ## 	ignore_sparc : ['1', '3', '4', '5', '6', '7']
    ## 	irq : irq0
    ## 	queue : th00
    ## 	snoop : 0
    ## 	thread_mask : 11xx11
    ## 	thread_status : 0x9a00000000
    ## 	threads : 110011
    ## 	tso_checker : 0
    ## }

    if configRC == None:
        return

    # (1) use 'cpu' to determine the  number of cpus, (2) if thread_maskN is
    # available, use that to calculate CMP, (3) otherwise, use ignore_sparc
    # and threadsN to calculate CMP, less desirable.
    try:
	numCpus = int(configRC.getData('swvmem0', 'cpu', silent=1))
    except:
	numCpus = 1

    if ((optdir['--ar'] == 'n2') and ((numCpus < 0) or (numCpus > 1))):
        sys.stderr.write('ERROR: wrong number of %s cpus %d\n' % (optdir['--ar'].upper(), numCpus))
        sys.exit(-1)	

    for ii in range(numCpus):
	# set cmp init value, if any
	coreAvailable = 0x0L
	coreRunning = 0x0L
	coresAndStrands = configRC.getData('swvmem0', 'thread_mask'+str(ii), silent=1)
	if (not coresAndStrands) and (ii == 0):
	    # for backward compatible, we used to just use thread_mask,
	    # instead of thread_mask0
	    coresAndStrands = configRC.getData('swvmem0', 'thread_mask', silent=1)
	#sys.stderr.write('#DBX: use thread_mask%d=%s\n' % (ii, coresAndStrands))
	if coresAndStrands:
	    # if -sas_run_args=-DTHREAD_MASK is used, the value is stored in
	    # coresAndStrands, which alone handles both cores & strands status.
	    # this is the preferred option of specifying core/strand availability.
	    # e.g., -sas_run_args=-DTHREAD_MASK=11xx11, every 2 digits (from right 
	    # to left) represents a core, 'xx' means disabled core.
	    coresAndStrands = coresAndStrands.lower()
	    tail = len(coresAndStrands)
	    i = 0
	    firstCore = -1
	    while tail >= 2:
		core = coresAndStrands[tail-2:tail]
		if core.find('x') == -1:
		    if firstCore == -1:
			# record the lowest core that is available
			firstCore = i
		    coreAvailable = coreAvailable | (0xffL << i*8)
		    coreRunning = coreRunning | (long(core, 16) << i*8)
		tail -= 2
		i += 1
	    if tail > 0:
		# if the coresAndStrands string has odd digits, handle the last one
		core = coresAndStrands[:tail]
		if core.find('x') == -1:
		    coreAvailable = coreAvailable | (0xffL << i*8)
		    coreRunning = coreRunning | (long(core, 16) << i*8)
	    # if no core is available, make the lowest one available
	    if coreAvailable == 0x0:
		coreAvailable = 0xffL
		firstCore = 0
	    # if o strand is running, make the lowest strand of the lowest
	    # available core running.
	    if coreRunning == 0x0:
		coreRunning = 0x1L << (firstCore*8)
	    #sys.stderr.write('#DBX: 1 coreAvailable=%#x\n' % (coreAvailable))
	    #sys.stderr.write('#DBX: 1 coreRunning=%#x\n' % (coreRunning))
	else:
	    # otherwise use the combination of cores & strands status
	    parkedCoreList = configRC.getData('swvmem0', 'ignore_sparc', silent=1)
	    if parkedCoreList != None:
		firstCore = -1
		i = ii*8
		while i < (ii*8 + 8):
		    if not str(i) in parkedCoreList:
			if firstCore == -1:
			    firstCore = i - (ii*8)
			coreAvailable = coreAvailable | (0xffL << (i-ii*8)*8)
		    i += 1
		if coreAvailable == 0x0:
		    coreAvailable = 0xffL
		    firstCore = 0
		# check strands
		if ii == 0:
		    # don't change existing variable
		    unparkedStrands = configRC.getData('swvmem0', 'threads', silent=1)
		else:
		    unparkedStrands = configRC.getData('swvmem0', 'threads'+str(ii), silent=1)
		if unparkedStrands != None:
		    # only strands in enabled cores can be running
		    coreRunning = long(unparkedStrands, 16) & coreAvailable
		    if coreRunning == 0x0:
			coreRunning = 0x1L << (firstCore*8)
		else:
		    # if no threads is specified, all strands in enabled cores
		    # are enabled
		    coreRunning = coreAvailable
		#sys.stderr.write('#DBX: 2 coreAvailable=%#x\n' % (coreAvailable))
		#sys.stderr.write('#DBX: 2 coreRunning=%#x\n' % (coreRunning))

	#sys.stderr.write('#DBX: 3 coreAvailable=%#x\n' % (coreAvailable))
	#sys.stderr.write('#DBX: 3 coreRunning=%#x\n' % (coreRunning))
	if coreAvailable != 0x0 and coreRunning != 0x0:
	    headStrand = ii * 64
	    strands[headStrand].wrasi(0x41, 0x0L, coreAvailable)
	    #???strands[headStrand].wrasi(0x41, 0x10L, coreAvailable)
	    strands[headStrand].wrasi(0x41, 0x20L, coreAvailable)

	    strands[headStrand].wrasi(0x41, 0x50L, coreRunning)
	    #???strands[headStrand].wrasi(0x41, 0x58L, coreRunning)


def initGenericNi (rsys):
    """init generic Niagara structure
    """
    #sys.stderr.write("#DBX %s: initGenericNi\n" % (time.ctime()))

    global ncpus
    global ncores
    global nstrands
    global cpus
    global cores
    global strands

    #TODO  need work
    if not rsys.__create_cpu__(1):
	print "Failed to create %d Ni cpu instance(s)" % 1
	sys.exit(-1)	

    # system configuration XXX
    ncpus = len(rsys.p)
    ncores = 8
    nstrands = 4

    for i in range(0,ncpus):
        cpus[i] = rsys.p[i]
        for j in range(0,8):
	    cores[i*8 + j] = rsys.p[i].c[j]
	    for k in range(0,4):
	        strands[i*8*4 + j*8 + k] = rsys.p[i].c[j].s[k] 	


def initGenericN2 (rsys):
    """init generic Niagara structure
    """
    #sys.stderr.write("#DBX %s: initGenericN2\n" % (time.ctime()))

    global ncpus
    global ncores
    global nstrands
    global cpus
    global cores
    global strands

    # system configuration #
    ncpus = len(rsys.p)
    ncores = len(rsys.p0.c)
    nstrands = len(rsys.p0.c0.s)

    for i in range(0,ncpus):
        cpus[i] = rsys.p[i]
        for j in range(0,ncores):
	    cores[i*ncores + j] = rsys.p[i].c[j]
	    for k in range(0,nstrands):
	        strands[i*ncores*nstrands + j*nstrands + k] = rsys.p[i].c[j].s[k] 	


def readConfig (optdir):
    """read configuration data
    """    
    global NEW_CONFIG
    global configRC

    #sys.stderr.write("#DBX %s: read config\n" % (time.ctime()))
    configRies = None
    configDiag = None

    # read -x config (diag.simics)
    if optdir.has_key('-x'):
	configRies = ReadConfigRies.ReadConfigRies()
	configRies.readConfig(optdir['-x'])
    #sys.stderr.write('DBX: configRies = %s\n' % (configRies))
    
    if configRies and configRies.data.has_key(ReadConfigRies.DIAG_CONF):
	# if DIAG_CONF is specified in -x, use that
	configDiag = ReadConfigDiag.ReadConfigDiag()
	configDiag.readConfig(configRies.data[ReadConfigRies.DIAG_CONF])
    #sys.stderr.write('DBX: configDiag = %s\n' % (configDiag))

    if configRies == None or configDiag == None:
	#sys.stderr.write('ERROR: no configuration data is given by either -c & -x, or --rc option\n')
	#usage()
	#sys.exit()
	return

    # system config
    try:
	newline = '@conf.%s.%s = %s' % (RC_SYS_CONFIG_OBJ, RC_PROMPT, configRies.data[ReadConfigRies.PROMPT])
    except:
	# default
	newline = '@conf.%s.%s = ries' % (RC_SYS_CONFIG_OBJ, RC_PROMPT)
    configDiag.setDataLine(newline)

    try:
	newline = '@conf.%s.%s = %s' % (RC_SYS_CONFIG_OBJ, RC_MEM_IMAGE, RC_configRies.data[ReadConfigRies.MEM_IMAGE])
    except:
	# default
	newline = '@conf.%s.%s = mem.image' % (RC_SYS_CONFIG_OBJ, RC_MEM_IMAGE)
    configDiag.setDataLine(newline)

    # process @def and def specified in config file
    handleAtDef(configRies, configDiag)
    # process @conf.zzz in configRies
    handleAtConf(configRies, configDiag)
    # process commands
    if configRies.data.has_key(ReadConfigRies.CMD):
	for cmd in configRies.data[ReadConfigRies.CMD]:
	    newline = '@conf.%s.%s =+ %s' % (RC_SYS_CONFIG_OBJ, RC_COMMAND, cmd)
	    configDiag.setDataLine(newline)
    # handle new_command() --- python command extension
    if configRies and configRies.data[ReadConfigRies.NEW_CMD] != {}:
	for cmdkey in configRies.data[ReadConfigRies.NEW_CMD].keys():
	    newline = '@conf.%s.%s =+ %s=%s' % (RC_SYS_CONFIG_OBJ, RC_COMMAND_EXT, cmdkey, configRies.data[ReadConfigRies.NEW_CMD][cmdkey])
	    configDiag.setDataLine(newline)

    fdtmp = open(NEW_CONFIG, 'w')
    fdtmp.write('%s\n' % (configDiag))
    fdtmp.close()

    # create the rc object to be used from now on
    configRC = ReadConfigDiag.ReadConfigDiag()
    configRC.readConfig(NEW_CONFIG)


def constructSystem (optdir):
    """construct a backend system
    """
    global rsys
    global sysAddr

    #sys.stderr.write("#DBX %s: construct system\n" % (time.ctime()))

    # create backend system and get the sys object's address, to be passed 
    # to nasAPI or blaze.
    try:
	createSystem(optdir)
    except:
	dbxTraceBack()

    #sys.stderr.write('# %s: sys addr=%u\n' % (time.ctime(), sysAddr))


#def handleAtDef (globals):
def handleAtDef (configRies, configDiag):
    """
    """
    global ATDEF

    #sys.stderr.write("#DBX %s: process @def/def\n" % (time.ctime()))

    try:
	# remove old file, if any
	os.remove(ATDEF)
    except:
	pass
    if configRies:
	tfd = open(ATDEF, 'w')
	if configRies.data[ReadConfigRies.AT_DEF] != {}:
	    for func in configRies.data[ReadConfigRies.AT_DEF].keys():
		tfd.write('%s\n' % (''.join(configRies.data[ReadConfigRies.AT_DEF][func])))
		tfd.write('\n')

	tfd.close()

    if configDiag:
	newline = '@conf.%s.%s = %s' % (RC_SYS_CONFIG_OBJ, RC_FUNC_DEF, ATDEF)
	configDiag.setDataLine(newline)

	# run the function definition in ATDEF
	if os.path.getsize(ATDEF) > 0:
	    execfile(ATDEF, globals())


def handleAtConf (configRies, configDiag):
    """
    """
    #sys.stderr.write("#DBX %s: process @conf.zzz\n" % (time.ctime()))

    if configDiag and configRies and configRies.data[ReadConfigRies.AT_CONF] != []:
	for dline in configRies.data[ReadConfigRies.AT_CONF]:
	    j = dline.find('=+')
	    if j > -1:
		# the value is to be appended to existing one(s)
		lop = dline[:j].strip()
		rop = dline[j+2:].strip()
		if re.match(DIGITAL_RE, rop):
		    # if rhs are all [0-9], leave as is
		    newline = dline
		else:
		    try:
			# we need to eval things like get_addr()
			newline = '%s =+ %#x' % (lop, eval(rop))
		    except:
			# if the right operand cannot be eval'ed, just use its 
			# original form.
			newline = dline
	    else:
		# the value is to be used to overwrite existing one
		j = dline.find('=')
		lop = dline[:j].strip()
		rop = dline[j+1:].strip()
		if re.match(DIGITAL_RE, rop):
		    # if rhs are all [0-9], leave as is
		    newline = dline
		else:
		    try:
			newline = '%s = %#x' % (lop, eval(rop))
		    except:
			newline = dline
	    # add/update value in configDiag
	    configDiag.setDataLine(newline)


def createCommandParser ():
    """
    """
    global parser
    global riesReposit
    global nstrandObjs
    global configRC

    #sys.stderr.write("#DBX %s: createCommandParser()\n" % (time.ctime()))

    parser = CmdParserNi.CmdParserNi(riesReposit)
    # set the value in parser for later use
    parser.setNstrandObjs(nstrandObjs)

    # init zzz_cmd_RS() & RS_zzz() functions in CmdParserNiCmd
    #sys.stderr.write("#DBX %s: create CmdParserNiCmd\n" % (time.ctime()))
    initCmdParserNiCmd(riesReposit, nstrandObjs)

    # handle new_command() --- python command extension
    if configRC:
	if configRC.getObjData(ReadConfigDiag.TYPE_SYS_CONFIG, RC_SYS_CONFIG_OBJ, RC_COMMAND_EXT, silent=1):
	    for cmd in configRC.getObjData(ReadConfigDiag.TYPE_SYS_CONFIG, RC_SYS_CONFIG_OBJ, RC_COMMAND_EXT):
		i = cmd.find('=')
		cmdkey = cmd[:i].strip()
		cmdVal = cmd[i+1].strip()
		parser.registerCommand(cmdkey, cmdVal)


def registerAtDef ():
    """
    """
    global ATDEF
    global parser

    #sys.stderr.write("#DBX %s: registerAtDef()\n" % (time.ctime()))

    try:
	if os.path.getsize(ATDEF) > 0:
	    fdtmp = open(ATDEF, 'r')
	    for line in fdtmp.readlines():
		if line.startswith('def '):
		    # def func(...):
		    lindex = line.find(' ')
		    mindex = line.find('(', lindex)
		    rindex = line.rfind(':')
		    fname = line[lindex+1:mindex].strip()
		    func = line[lindex+1:rindex].strip()
		    parser.registerDoc(fname, func, '@DEF', '@def '+func, None)
    except:
	pass


def debugMomConfig (config):
    """this function is N2 specific
    """
    momConfig = ReadConfigDiag.ReadConfigDiag()
    momConfig.readConfig(config)
    momKeys = momConfig.getObjKeys('mom', 'mom0', silent=1)
    if momKeys != []:
	klist = momKeys
	klist.sort()
	for key in klist:
	    data = momConfig.getData('mom0', key, silent=1)
	    sys.stderr.write('MOM: %s : %s\n' % (key, data))

def blazercCmd (newBlazeCmd):
    """extract riesling commands (the ones with #@) from blazerc
    """
    global riesReposit
    global optdir

    # handle blaze -c option, if one is specifed.
    if not optdir.has_key('--blazeopt'):
        return []
    else:
        blazeopt = optdir['--blazeopt']

    #sys.stderr.write('#DBX: SamFR::blazercCmd: blazeopt=%s\n' % (blazeopt)) #DBX

    ii = blazeopt.find('-c ')
    if ii < 0:
        # no -c option is specified
        return []

    tmp = blazeopt[ii+3:].strip()
    jj = tmp.find(' ')
    if jj == -1:
	rcname = tmp
    else:
	rcname = tmp[:jj]
    try:
	fdrc = open(rcname, 'r')
    except:
	sys.stderr.write('ERROR: fail to open %s\n' % (rcname))
	sys.exit()

    # sample sysconf statements in blazerc
    # sysconf cpu name=cpu0 cpu-type=SUNW,UltraSPARC-T1 clock-frequency=0x200000 system-frequency=0x100000 cpu-loopticks=2 cpu-stickincr=1
    # sysconf dumbserial serial1 type=GUEST startpa=0x9f10000000 endpa=0x9f1000004f
    # sysconf dumbserial serial2 type=HYPERVISOR startpa=0xfff0c2c000 endpa=0xfff0c2c04f

    cmd = [ ]
    cpuCount = 0
    riesReposit.blazeNumcpu = 0
    for line in fdrc.readlines():
	line = line.strip()
	if line and line.startswith('#@'):
	    cmd.append(line[2:])
	elif line and line.startswith('conf numcpu'):
	    # record the numcpu value in blazerc and initialize the pmask value
	    # base on that.
	    tokens = line.split()
	    riesReposit.blazeNumcpu = int(tokens[2])
	    riesReposit.pmask = 1L
	    for i in range(1,riesReposit.blazeNumcpu):
		riesReposit.pmask = (riesReposit.pmask << 1) | 0x1
	elif line.startswith('sysconf'):
	    # sysconf -p ../../lib
	    # sysconf cpu name=cpu0 cpu-type=...
	    # sysconf dumbserial serial1 type=GUEST ...
	    tokens = line.split()
	    if (tokens[1].lower() != 'cpu') and (tokens[1] != '-p'):
		newBlazeCmd.append(tokens[1])
		newBlazeCmd.append(tokens[2])
	    elif (tokens[1].lower() == 'cpu') and (tokens[2].lower().startswith('name=cpu')):
		cpuCount += 1

    if (riesReposit.blazeNumcpu == 0) and (cpuCount > 0):
	riesReposit.blazeNumcpu = cpuCount
	riesReposit.pmask = 0x1L
	for i in range(1,riesReposit.blazeNumcpu):
	    riesReposit.pmask = (riesReposit.pmask << 1) | 0x1L

    if optdir['--blaze'] in ['n2']:
	# convert blaze numcpu to coreAvailable
	if (riesReposit.blazeNumcpu % riesReposit.nstrands) == 0:
	    cores = riesReposit.blazeNumcpu / riesReposit.nstrands
	else:
	    cores = (riesReposit.blazeNumcpu / riesReposit.nstrands) + 1

	for i in range(0, cores):
	    if (i % riesReposit.ncores) == 0:
		setcmp = 0
		cpuid = i / riesReposit.ncores
		coreAvail = 0xffL
	    else:
		setcmp = 0
		#coreAvail = (coreAvail << ((i%riesReposit.ncores)*8)) | 0xffL
		coreAvail = (coreAvail << 8) | 0xffL
		if ((i+1) % riesReposit.ncores) == 0:
		    # re-adjust CMP registers
		    setcmp = 1
		    strandid = cpuid * riesReposit.ncores * riesReposit.nstrands
		    coreAvailable = strands[strandid].rdasi(0x41, 0x0L) & coreAvail
		    strands[strandid].wrasi(0x41, 0x0L, coreAvailable)
		    #???strands[strandid].wrasi(0x41, 0x10L, coreAvailable)
		    strands[strandid].wrasi(0x41, 0x20L, coreAvailable)
		    coreRunning = strands[strandid].rdasi(0x41, 0x50L) & coreAvail
		    strands[strandid].wrasi(0x41, 0x50L, coreRunning)
		    #???strands[strandid].wrasi(0x41, 0x58L, coreRunning)

	# final set
	if setcmp == 0:
	    strandid = cpuid * riesReposit.ncores * riesReposit.nstrands
	    coreAvailable = strands[strandid].rdasi(0x41, 0x0L) & coreAvail
	    strands[strandid].wrasi(0x41, 0x0L, coreAvailable)
	    #???strands[strandid].wrasi(0x41, 0x10L, coreAvailable)
	    strands[strandid].wrasi(0x41, 0x20L, coreAvailable)
	    coreRunning = strands[strandid].rdasi(0x41, 0x50L) & coreAvail
	    strands[strandid].wrasi(0x41, 0x50L, coreRunning)
	    #???strands[strandid].wrasi(0x41, 0x58L, coreRunning)

	if optdir.has_key('--pmask'):
	    mask = long(optdir['--pmask'],16)
	    coreRunning = mask & strands[strandid].rdasi(0x41, 0x0L)
	    strands[strandid].wrasi(0x41, 0x50L, coreRunning)

    return cmd


########################
#####     MAIN     #####
########################
#if __name__ == '__main__':

from CmdParserNiCmd import *
import CmdParserNi
import ReadConfigRies
import ReadConfigDiag
from SamUtility import *

rsys = None
# default arch configuration
(ncpus, ncores, nucores, nstrands) = (0,0,0,0)
(cpus, cores, ucores, strands) = ({},{},{},{})
configRC = None
riesReposit = None
optdir = None
parser = None
# folder to keep UI commands (the ones start with #@) extracted from blazerc
rcCmd = [ ]
nstrandObjs = 0
ATDEF = '.riesling.def'
NEW_CONFIG = '.riesling.rc'


def init (pfeSim, _optdir, uppers={}):
    """
    frontend parser startup
    """
    global rsys
    global ncpus
    global ncores
    global nstrands
    global cpus
    global cores
    global strands
    global configRC
    global riesReposit
    global optdir
    global parser
    global rcCmd

    # initialize SamUtility
    initSamUtility(pfeSim)

    optdir = _optdir

    import commands
    #sys.stderr.write("# %s\n" % (commands.getoutput('uname -a')))
    #sys.stderr.write("# Python %s\n" % sys.version)
    #sys.stderr.write("# %s: start sam frontend\n" % (time.ctime()))

    # read -x diag.sam (and then diag.conf)
    if optdir.has_key('--rc'):
	# if --rc is used, then ignore -x
	# NOTE  it will be tricky to use --rc in rtl cosim environment,
	#       as we need socket-id to connect with rtl, and the id will
	#       change from run to run, which is recorded in diag.conf by sims,
	#       the socket-id in --rc won't work as it was from the previous
	#       run, if at all.
	#sys.stderr.write('WARNING: cannot use --rc %s when cosim with RTL\n' % (optdir['--rc']))
	NEW_CONFIG = optdir['--rc']
	configRC = ReadConfigDiag.ReadConfigDiag()
	configRC.readConfig(optdir['--rc'])
	# run function definition specified by -x or --rc
	ATDEF = configRC.getData(RC_SYS_CONFIG_OBJ, RC_FUNC_DEF)
	#sys.stderr.write('#DBX: func-def %s\n' % (funcDef))
	if ATDEF and os.path.getsize(ATDEF) > 0:
	    execfile(ATDEF, globals())
    else:
	readConfig(optdir)

    # check if blaze/mom will be used
    if configRC:
	momObjs = configRC.getObjIds('mom', silent=1)
	if (momObjs != []):
	    # if user specifies a special version of mom, use that instead
	    # of the default file.
	    try:
		momSoPath = configRC.data['mom']['mom0']['so_path']
	    except:
		momSoPath = None
	    if (momSoPath):
		if (os.path.exists(momSoPath)):
		    cmd='ls -l *mom* ; /bin/cp -p %s . ; ls -l *mom*' % (momSoPath)
		    os.system(cmd)
		else:
		    sys.stderr.write('ERROR: mom module %s does not exist\n' % (momSoPath))
		    sys.exit()

	if (momObjs != []) and (not optdir.has_key('--blaze')):
	    prompt = configRC.data[ReadConfigDiag.TYPE_SYS_CONFIG][RC_SYS_CONFIG_OBJ][RC_PROMPT]
	    if prompt == 'nas':
		optdir['--blaze'] = 'n2'
	    else:
		sys.stderr.write('ERROR: unknown system prompt %s\n' % (prompt))
		sys.exit()
		

    # construct backend system
    SYSTEM = 'rsys'
    rsys = pfeSim
    sysAddr = 0L
    constructSystem(optdir)

    if configRC:
	MEM_IMAGE = configRC.getObjData(ReadConfigDiag.TYPE_SYS_CONFIG, RC_SYS_CONFIG_OBJ, RC_MEM_IMAGE)
    else:
	MEM_IMAGE = 'mem.image'

    # a Repository object for variables that should be availabe globally,
    # this is most useful in interactive mode, where we may need to eval()
    # commands at various locations.
    import Repository
    riesReposit = Repository.Repository()

    riesReposit.riesling = rsys
    riesReposit.topName = SYSTEM
    # record main program's globals so other functions deep in the code
    # structure can have access to top layer values.
    riesReposit.globals = globals()
    riesReposit.sysAddr = sysAddr
    riesReposit.ncpus = ncpus
    riesReposit.ncores = ncores
    riesReposit.nucores = nucores
    riesReposit.nstrands = nstrands
    riesReposit.optdir = optdir
    riesReposit.cpus = cpus
    riesReposit.cores = cores
    riesReposit.ucores = ucores
    riesReposit.strands = strands

    #declare variables for single, double and quad fp regs
    # is it ok to put n2 specific constants here? ---> fp is generic enough
    riesReposit.nSpregs = 64	
    riesReposit.nDpregs = 32	
    riesReposit.nQpregs = 16	
    riesReposit.arch = optdir['--ar']

    # create a command parser
    #import CmdParserNi
    # we have to import CmdParserNiCmd* at this level so that all the
    # RS_zzz() can be globally available
    createCommandParser()

    parms = { 'confRC':configRC, 'reposit':riesReposit, 'parser':parser }

    # register @def/def functions' doc, if any
    registerAtDef()

    # load personal customization, if available
    filename = os.environ.get('PYTHONSTARTUP')
    if filename and os.path.isfile(filename):
        #sys.stderr.write('# Executing User Startup %s .. \n' % filename)
        execfile(filename)

    #sys.stderr.write("#DBX %s: ready for interactive mode\n" % (time.ctime()))
        
    if optdir.has_key('--blaze'):
        # parse blaze options, if available
        newBlazeCmd = [ ]
        rcCmd = blazercCmd(newBlazeCmd)
        #sys.stderr.write('#DBX: rcCmd=%s\n' % (rcCmd)) #DBX
        # register blaze cmooand map
        import SamCmdMap
        samCmdMap = SamCmdMap.SamCmdMap()
        parser.registerCmdMap(samCmdMap)
        # register new commands introduced by sysconf in blazerc
        for cmd in newBlazeCmd:
            samCmdMap.cmdMap.append(cmd)
        # switch to use 'sam' as prompt symbol, sam is blaze 
        # infrastructure plus risling core
        if configRC:
            newline = '@conf.%s.%s = sam' % (RC_SYS_CONFIG_OBJ, RC_PROMPT)
            configRC.setDataLine(newline)

    # Historically a -p introduced pythoon script, so for now keep checking
    # for this -p option

    if optdir.has_key('-p'):
        files = optdir['-p'].split(',')
        for file in files:
            execfile(file)

    # The modern way is to treat all command line arguments that have no 
    # dash something prefix as python scripts that are executed in the 
    # order given

    if optdir.has_key('scripts'):
        for script in optdir['scripts']:
	    execfile(script)

    # enter interactive mode
    #interact(banner="Sam Frontend Reader", local=vars(), **parms)

    # merge (optional) upper level globals() before go into the customized
    # interpreter
    uppers.update(globals())
    uppers.update(locals())
    interact(banner="Sam Frontend Reader", local=uppers, **parms)
