tests
test22bMultipleAssignments

	self setUpParser: 'x=(| a b | b := a := field := 2)'.
	parser cgenc addFields: {'field'}.
	bytecode := (parser apply: #method) bytecode.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 2.
	self assertBcAt: 2 is: SOMBCDup.
	self assertBcAt: 3 is: SOMBCDup.
	self assertBcAt: 4 is: SOMBCDup.
	self assertBcAt: 5 is: SOMBCPopField.
	self assert: bytecode fifth index equals: 3. "literal indexof field"
	self assert: bytecode sixth index equals: 1. "local index"
	self assert: bytecode seventh index equals: 2. "local index"