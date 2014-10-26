tests
test02Constant

	self setUpParser: 'x = (1)' andApply: #method.
	self assertNoFail: result.
	self assert: result literals size equals: 1.
	self assert: result bytecodeCount equals: 7.
	self assert: result literals first number equals: 1.