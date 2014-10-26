bytecode processing
doPushLocal
	| localSlot contextLevel |
	localSlot := self currentBytecode index.
	contextLevel := self currentBytecode contextIndex.
	self somFrame push: (self somFrame 
			localAtIndex: localSlot
			contextLevel: contextLevel)