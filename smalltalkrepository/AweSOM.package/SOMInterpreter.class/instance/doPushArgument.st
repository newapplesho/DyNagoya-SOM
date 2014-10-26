bytecode processing
doPushArgument
	"pushes the argument onto the stack which is identified by the slot index and context level in the next two bytes of the bytecode"
	| slot contextLevel |
	slot := self currentBytecode index.
	contextLevel := self currentBytecode contextIndex.
	self somFrame push: (self somFrame 
			argumentAtIndex: slot
			contextLevel: contextLevel)