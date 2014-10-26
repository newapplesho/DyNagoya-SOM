tests
test10bKeywordMessage

	self setUpParser: 'x = (1 a: 2 b: 3)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 accessor: #number equals: 3.
	self assertLiteralAt: 4 equals: 'a:b:'.