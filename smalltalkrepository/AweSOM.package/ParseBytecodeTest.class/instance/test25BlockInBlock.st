tests
test25BlockInBlock

	self setUpParser: '[ [] ]' andApply: #nestedBlock.
	self assertNoFail: result.
	self assertBcAt: 1 is: SOMBCPushBlock.