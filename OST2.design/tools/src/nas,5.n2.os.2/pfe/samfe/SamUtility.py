#
# collection of utility functions
#

pfeSim = None

def initSamUtility(sim):
    """
    this function must be called first before other functions in this file
    can be used.
    """
    global pfeSim
    pfeSim = sim


def lstmode(on=None):
    """
    set display mode:
        0 - silent mode
        1 - display instr & register delta
        2 - display instr
    """
    global pfeSim
    for s in pfeSim.s:
	s.lstmode(on)


def stepx(sid=[-1], n=1, d=1):
    """
    execute instructions among strands in round-rabin order
        sid: the strands to be included in the execution, -1 means all strands
        n: number of instructions to be executed per strand
        d: number of instructions to be executed per iteration
    """
    global pfeSim
    ss = []
    if -1 in sid:
	# include all strands
	ss = pfeSim.s
    else:
	# otherwise only selected strand(s)
	for id in sid:
	    ss.append(pfeSim.s[id])
    while n > d:
	for s in ss:
	    brk = s.step(d)
	    if brk > 0:
		# this strand hits a breakpoint, stop execution, 
		# return remaining instruction count
		return n-(d-brk)
	n -= d
    for s in ss:
	brk = s.step(n)
	if brk > 0:
	    # this strand hits a breakpoint, stop execution,
	    # return remaining instruction count
	    return brk
