tests
test04MultipleExpressions

	self setUpParser: 'x = (1. 2. 3. ^self)' andApply: #method.
	self assertNoFail: result.
	self assert: result isFinished.
	self assert: result bytecodeCount equals: 13.
	self assert: result bytecode size equals: 8.
	self assertBcAt: 8 is: SOMBCReturnLocal.