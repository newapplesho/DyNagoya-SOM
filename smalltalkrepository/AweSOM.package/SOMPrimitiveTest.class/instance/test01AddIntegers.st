tests
test01AddIntegers
	| a b c |
	a := universe newNumber: 5.
	b := universe newNumber: 7.
	c := a primPlus: b.
	self 
		assert: c number
		equals: 12.
	self 
		assert: c somClass
		equals: (universe globalAt: #Integer).
	a := SOMInteger 
		inUniverse: universe
		new: 5.
	b := SOMDouble 
		inUniverse: universe
		new: 7.5.
	c := a primPlus: b.
	self 
		assert: c number
		equals: 12.5.
	self 
		assert: c somClass
		equals: (universe globalAt: #Double)