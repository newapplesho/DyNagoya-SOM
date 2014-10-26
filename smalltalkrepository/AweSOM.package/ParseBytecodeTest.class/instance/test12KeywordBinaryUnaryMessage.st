tests
test12KeywordBinaryUnaryMessage

	self setUpParser: 'x = (1 + 2 test a: 3 test2 b: 4 test3.)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: 'test'.
	self assertLiteralAt: 4 equals: '+'.
	self assertLiteralAt: 5 accessor: #number equals: 3.
	self assertLiteralAt: 6 equals: 'test2'.
	self assertLiteralAt: 7 accessor: #number equals: 4.
	self assertLiteralAt: 8 equals: 'test3'.
	self assertLiteralAt: 9 equals: 'a:b:'.