bytecode processing
doDup
	"duplicate the topmost element of the stack"
	
	self somFrame 
		push: (self somFrame stackElementAtIndex: 1)