tests
test03aReturnObject

	self setUpParser: 'x = (^1.)' andApply: #method.
	self assertNoFail: result.
	self assert: result bytecodeCount equals: 3.
	self assert: result bytecode size equals: 2