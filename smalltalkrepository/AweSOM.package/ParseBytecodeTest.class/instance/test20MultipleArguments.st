tests
test20MultipleArguments

	self setUpParser: '[''abc'' println. ^nil]' withMgencAndApply: #nestedBlock.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #string equals: 'abc'.
	self assertLiteralAt: 2 equals: 'println'.
	self assertBcAt: 4 is: SOMBCPushGlobal.
	self assertLiteralAt: 4 equals: 'nil'.
	self assertBcAt: 5 is: SOMBCReturnNonLocal.