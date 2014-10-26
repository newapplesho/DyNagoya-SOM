tests
test21bSymbol

	self setUpParser: 'x=(#someSymbol:a:)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #symbol equals: #someSymbol:a:.