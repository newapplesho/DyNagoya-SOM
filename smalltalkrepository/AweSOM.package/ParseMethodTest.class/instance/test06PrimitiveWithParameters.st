tests
test06PrimitiveWithParameters

	self setUpParser: 'test: a test: b = primitive'.
	self assertNoFail: (result := parser apply: #method).
	self assert: result fakeSource equals: '^ SOMPrimitives Dummytest: a test: b'