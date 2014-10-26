tests
test05PrimitiveMethodGeneratesBody

	self setUpParser: 'test = primitive'.
	parser fakeCgenc. "className = Dummy"
	self assertNoFail: (result := parser apply: #method).
	self assert: result fakeSource equals: '^ SOMPrimitives Dummytest'