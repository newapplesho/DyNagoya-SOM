tests
test10aKeywordMessage

	self setUpParser: 'x = (1 a: 2)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: 'a:'.