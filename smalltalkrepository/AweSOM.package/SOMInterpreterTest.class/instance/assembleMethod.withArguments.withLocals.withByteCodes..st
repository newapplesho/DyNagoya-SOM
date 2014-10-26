helper
assembleMethod: name withArguments: args withLocals: locals withByteCodes: byteCodeGenerator

	| testMgenc |
	testMgenc := universe methodGenClass named: name.
	byteCodeGenerator value: testMgenc.
	testMgenc arguments
		add: 'self';
		addAll: args.
	testMgenc locals addAll: locals.
	^ testMgenc assembleIn: universe.