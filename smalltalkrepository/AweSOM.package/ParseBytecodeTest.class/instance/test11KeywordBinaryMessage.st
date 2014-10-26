tests
test11KeywordBinaryMessage

	self setUpParser: 'x = (1 + 2 a: 3 b: 4)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: '+'.
	self assertLiteralAt: 4 accessor: #number equals: 3.
	self assertLiteralAt: 5 accessor: #number equals: 4.
	self assertLiteralAt: 6 equals: 'a:b:'.