tests
test10dKeywordMessage

	self setUpParser: 'x = (self test a: 1)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 3 accessor: #number equals: 1.
	self assertLiteralAt: 2 equals: 'test'.
	self assertLiteralAt: 4 equals: 'a:'.