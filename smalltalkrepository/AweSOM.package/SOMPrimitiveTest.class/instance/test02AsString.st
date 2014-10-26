tests
test02AsString
	| a s |
	a := SOMInteger 
		inUniverse: universe
		new: 5678.
	s := a primasString.
	self 
		assert: s string
		equals: '5678'.
	self 
		assert: s somClass
		equals: (universe globalAt: #String)