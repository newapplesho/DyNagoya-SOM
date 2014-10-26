primitives
primperform: aSOMSymbol inSuperclass: class
	self
		sendMessage: aSOMSymbol symbol
		withArguments: (SOMArray inUniverse: universe size: 0)
		inClass: class.
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."