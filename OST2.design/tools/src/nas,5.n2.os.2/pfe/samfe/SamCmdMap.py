"""
class list all commands intended for blaze in a blaze-riesling
environment
"""
import sys, types

import sam

class SamCmdMap:
    """
    """

    def __init__ (self, blaze=None):
	"""
	"""
	self.blaze = blaze
	self.cmdMap = [
	    'conf',
	    'connect',
	    'console-send',
	    'device',
	    'diskdelay',
	    'dbg',
	    'dump',
	    'file',
#	    'help',
	    'ioa',
	    'ldm',
	    'load',
	    'mem',
	    'memdump',
	    'memseg',
	    'mips',
	    'mmi',
	    'mod',
	    'on',
# 5/25/05: penable/pdisable will update CMP registers and step() will check
# core_running_status before execution, so blaze has no need to handle penable/
# pdisable any more, it should consider all strands are enabled at all time,
# and let riesling strand.step() decide whenther it should step or not.
#	    'pdisable',
#	    'penable',
# 9/2/05: pmask is used to control which blaze cpus will be enabled, this is
#         to work around CMP to get user a better control of cpu execution.
	    'pmask',
	    'rdt',
	    'regs',
            'rstrace',
	    'run',
	    'scsi_ctrl',
	    'scsi_disk',
	    'setreg',
	    'stepi',
	    'stepim',
	    'stept',
	    'stop',
	    'sync',
	    'time',
	    'tlbdump',
	    'uldm',
	    'write',
	    'ssi', # riesling command, turn it to nop in sam
	    'runfast', # riesling command, ditto
	    'vdebug',
	    'load_symbols',
	    'unload_symbols',
	    'sym',
	    'where',
	    'tlbs'
	    ]


    def issueCmd (self, cmd, output, riesReposit):
	"""
	"""
	tokens = cmd.split()
	if tokens[0] in self.cmdMap:
	    if tokens[0] == 'file':
		# process the file line-by-line
		return 'execfile("%s")' % (tokens[1])
	    else:
		if ((tokens[0] == 'ssi') or (tokens[0] == 'runfast')):
		    sys.stderr.write('ERROR: command %s is not supported in SAM, use "stepi N" or "run N" instead\n' % (tokens[0]))
		    return None
		elif (tokens[0] == 'run'):
		    if (len(tokens) > 1):
			# 'run' is a non-blocking call, if we see 'run N', 
			# convert that to 'stepi N'
                        cmd = 'stepi ' + ' '.join(tokens[1:])
		    else:
			# 'run' alone becomes a non-blocking call, we should
			# get UI prompt back right the way
                        cmd = tokens[0]
		elif (tokens[0] == 'pmask'):
		    if len(tokens) == 1:
			# query current pmask
			sys.stderr.write('%#x\n' % riesReposit.pmask)
			return None
		    else:
			if not sam.is_stopped():
			    sys.stderr.write('Simulator is running, issue "stop" before changing pmask\n')
			    return None
			# set blaze penable accordingly
			newMask = long(tokens[1], 16)
			toDisable = riesReposit.pmask & (~newMask & 0xffffffffffffffffL)
			toEnable = (~riesReposit.pmask & 0xffffffffffffffffL) & newMask
			#sys.stderr.write('DBX: newMask=%#x  toDisable=%#x  toEnable=%#x\n' % (newMask, toDisable, toEnable))
			# disable currently enabled, but to be disabled strands
			for i in range(riesReposit.blazeNumcpu):
			    if ((toDisable >> i) &0x1) == 0x1:
				cmd = 'pdisable th%d' % i
				#sys.stderr.write('DBX: cmd=%s\n' % cmd)
				#self.blaze.command(cmd)
				sam.ui_exec(cmd);
			# disable currently disabled, but to be enabled strands
			for i in range(riesReposit.blazeNumcpu):
			    if ((toEnable >> i) &0x1) == 0x1:
				cmd = 'penable th%d' % i
				#sys.stderr.write('DBX: cmd=%s\n' % cmd)
				#self.blaze.command(cmd)
				sam.ui_exec(cmd);
			# update to the new mask
			riesReposit.pmask = newMask
			return None

		if type(output) is types.ListType:
		    #output = output.append(self.blaze.command(cmd))
		    sam.ui_exec(cmd);
		else:
		    #self.blaze.command(cmd)
		    sam.ui_exec(cmd);


		if cmd == 'run':
		    riesReposit.running = 1
		    #print "start running...."
		    #sys.ps1 = 'run>'
		#elif (cmd == 'stop') or (cmd.startswith('stepi ')):
		elif cmd == 'stop':
		    # don't check 'stepi' here. If we first do 'run', then
		    # enter either 'run N' or 'stepi N', blaze will issue
		    # 'is running' and return without doing anything, at this
		    # time blaze is still in the first 'run', so we cannot
		    # set running to 0 for 'run N' or 'stepi N', as they may
		    # not be executed at all.
		    riesReposit.running = 0
		    #print "stop command was issued."
		    #sys.ps1 = 'stop>'

		if len(tokens) > 2 and (tokens[0] == 'mod' and 
					tokens[1] == 'load'):
		    # mod load xxx yyy, register 'xxx' as a command prefix, as all
		    # module 'yyy' related commands will use that prefix
		    if not tokens[2] in self.cmdMap:
			self.cmdMap.append(tokens[2])
	        return None
	else:
	    return cmd


    def showCmd (self):
	"""
	"""
	print self.cmdMap


"""self-testing
"""
if __name__ == "__main__":
    pass
