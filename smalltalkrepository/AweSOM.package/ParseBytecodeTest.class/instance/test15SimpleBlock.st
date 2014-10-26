tests
test15SimpleBlock

	self setUpParser: 'x = ([])' andApply: #method.
	self assertNoFail: result.
	self assertBcAt: 1 is: SOMBCPushBlock.