tests
test05CallPrimitive
	| theSelf theOther method |
	theSelf := SOMInteger 
		inUniverse: universe
		new: 50.
	theOther := SOMInteger 
		inUniverse: universe
		new: 8.
	frame
		push: theSelf;
		push: theOther.
	method := SOMPrimitive inUniverse: universe.
	method
		numberOfArguments: 2;
		somSignature: (SOMSymbol 
				inUniverse: universe
				string: '-');
		invokeInFrame: frame.
	self 
		assert: frame pop number
		equals: 42