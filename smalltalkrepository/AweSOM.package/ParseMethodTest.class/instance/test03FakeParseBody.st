tests
test03FakeParseBody

	self setUpParser: 'x: abc y: def4 = ( 1 * (2*(2)). )'.
	parser shouldReadSources: true.
	self assertNoFail: (result := parser apply: #method).
	self assert: result fakeSource equals: ' 1 * (2*(2)). '.