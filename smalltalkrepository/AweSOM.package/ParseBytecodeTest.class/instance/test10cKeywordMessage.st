tests
test10cKeywordMessage

	self setUpParser: 'x = (1 a: self test)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 3 equals: 'test'.
	self assertLiteralAt: 4 equals: 'a:'.