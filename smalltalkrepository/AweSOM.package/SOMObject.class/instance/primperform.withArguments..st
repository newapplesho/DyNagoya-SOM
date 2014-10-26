primitives
primperform: aSOMSymbol withArguments: args
	self sendMessage: aSOMSymbol symbol
		withArguments: args.
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."