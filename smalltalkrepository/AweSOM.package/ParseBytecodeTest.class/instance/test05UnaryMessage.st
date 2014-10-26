tests
test05UnaryMessage

	self setUpParser: 'x = (1 test)' andApply: #method.
	self assertNoFail: result.
	self assert: result bytecode size equals: 5.
	self assertLiteralAt: 2 equals: 'test'.
	self assert: result bytecodeCount equals: 9.
