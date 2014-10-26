tests
test18BlockReturn

	self setUpParser: '[^1]' withMgencAndApply: #nestedBlock.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertBcAt: 2 is: SOMBCReturnNonLocal.
	self assert: bytecode size equals: 2.