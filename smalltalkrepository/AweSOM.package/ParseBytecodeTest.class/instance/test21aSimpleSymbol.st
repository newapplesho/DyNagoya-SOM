tests
test21aSimpleSymbol

	self setUpParser: 'x=(#someSymbol)' andApply: #method.
	self assertNoFail: result.
	self assertLiteralAt: 1 accessor: #symbol equals: #someSymbol.