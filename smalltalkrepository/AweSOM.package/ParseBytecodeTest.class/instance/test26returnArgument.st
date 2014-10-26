tests
test26returnArgument

	self setUpParser: 'x: a = (^a)' andApply: #method.
	self assertNoFail: result.
	self assertBcAt: 1 is: SOMBCPushArgument.
	self assertBcAt: 2 is: SOMBCReturnLocal.