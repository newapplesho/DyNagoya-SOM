primitives
primperform: aSOMSymbol withArguments: args inSuperclass: class
	self
		sendMessage: aSOMSymbol symbol
		withArguments: args
		inClass: class.
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."