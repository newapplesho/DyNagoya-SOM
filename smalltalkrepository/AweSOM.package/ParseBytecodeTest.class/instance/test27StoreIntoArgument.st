tests
test27StoreIntoArgument

	self setUpParser: 'x: a = (a := 1)' andApply: #method.
	self assertNoFail: result.
	self assertBcAt: 1 is: SOMBCPushConstant.
	self assertBcAt: 2 is: SOMBCDup.
	self assertBcAt: 3 is: SOMBCPopArgument.