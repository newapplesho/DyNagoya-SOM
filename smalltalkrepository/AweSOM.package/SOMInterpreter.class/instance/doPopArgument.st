bytecode processing
doPopArgument
	"pops the topmost stack element into the argument which is identified by the slot index and context level in the bytecode"
	
	self somFrame 
		argumentAtIndex: (self currentBytecode index)
		contextLevel: (self currentBytecode contextIndex)
		put: (self somFrame pop)