bytecode processing
doPopLocal
	| localSlot contextLevel |
	localSlot := self currentBytecode index.
	contextLevel := self currentBytecode contextIndex.
	self somFrame 
			localAtIndex: localSlot
			contextLevel: contextLevel
			put: (self somFrame pop)