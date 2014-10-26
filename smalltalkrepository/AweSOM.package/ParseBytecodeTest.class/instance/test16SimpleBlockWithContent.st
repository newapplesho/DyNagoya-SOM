tests
test16SimpleBlockWithContent

	self setUpParser: 'x = ([1])' andApply: #method.
	self assertNoFail: result.
	self assertBcAt: 1 is: SOMBCPushBlock.
	self assertNoFail: bytecode first mgenc.