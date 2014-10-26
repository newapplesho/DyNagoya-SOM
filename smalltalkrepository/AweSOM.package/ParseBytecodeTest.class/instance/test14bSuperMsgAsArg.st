tests
test14bSuperMsgAsArg

	self setUpParser: 'x = (1 a: super test)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assert: bytecode second index equals: 1. "self"
	self assertLiteralAt: 3 equals: 'test'.
	self assertBcAt: 3 is: SOMBCSuperSend.
	self assertLiteralAt: 4 equals: 'a:'.
	self assertBcAt: 4 is: SOMBCSend.