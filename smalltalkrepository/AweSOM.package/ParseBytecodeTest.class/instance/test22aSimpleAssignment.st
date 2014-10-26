tests
test22aSimpleAssignment

	self setUpParser: 'x=(| a | a := 2)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #number equals: 2.
	self assertBcAt: 2 is: SOMBCDup.
	self assertBcAt: 3 is: SOMBCPopLocal.
	self assert: bytecode third index equals: 1.
	self assert: bytecode third contextIndex equals: 1.