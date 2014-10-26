tests
test06MultipleUnaryMessages

	self setUpParser: 'x = (1 test test2 test3)' andApply: #method.
	self assertNoFail: result.
	self assert: result bytecode size equals: 7.
	self assertLiteralAt: 3 equals: 'test2'.
	self assertLiteralAt: 4 equals: 'test3'.
	self assert: result bytecodeCount equals: 13.
