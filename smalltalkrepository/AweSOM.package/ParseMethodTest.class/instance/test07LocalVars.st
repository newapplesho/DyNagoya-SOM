tests
test07LocalVars

	| result |
	self setUpParser: 'x = (| abc |)'.
	self assertNoFail: (result := parser apply: #method).
	self assert: result locals equals: {'abc'} asOrderedCollection.