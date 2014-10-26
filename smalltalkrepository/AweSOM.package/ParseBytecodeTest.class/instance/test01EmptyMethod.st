tests
test01EmptyMethod

	self setUpParser: 'x = ()' andApply: #method.
	self assertNoFail: result.
	self assert: result locals isEmpty.
	self assert: result arguments size equals: 1. "self"
	self assert: result literals isEmpty.
	self assert: result bytecodeCount equals: 4.
	self assertBcAt: 2 is: SOMBCReturnLocal.