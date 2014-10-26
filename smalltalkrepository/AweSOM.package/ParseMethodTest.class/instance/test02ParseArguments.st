tests
test02ParseArguments

	self setUpParser: 'x: abc y: def4 = ( 1 + 1 )'.
	self assertNoFail: (result := parser apply: #method).
	self assert: result arguments size = 3. "First is self"
	self assert: (result arguments includes: 'abc').
	self assert: (result arguments includes: 'def4').