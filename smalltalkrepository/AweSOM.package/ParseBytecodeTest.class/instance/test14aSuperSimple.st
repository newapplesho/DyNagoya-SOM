tests
test14aSuperSimple

	self setUpParser: 'x = (super test)' andApply: #method.
	self assertNoFail: result.
	self assert: bytecode first index equals: 1. "self"
	self assertLiteralAt: 2 equals: 'test'.
	self assertBcAt: 2 is: SOMBCSuperSend.