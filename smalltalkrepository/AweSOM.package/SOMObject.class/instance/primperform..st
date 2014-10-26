primitives
primperform: aSOMSymbol
	self sendMessage: aSOMSymbol symbol
		withArguments: 
			(SOMArray inUniverse: universe size: 0).
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."