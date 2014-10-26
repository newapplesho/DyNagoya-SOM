tests
test08BinaryUnaryMessage

	self setUpParser: 'x = (1 + 2 test)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: 'test'.
	self assertLiteralAt: 4 equals: '+'.
	self assert: result bytecode size equals: 7.