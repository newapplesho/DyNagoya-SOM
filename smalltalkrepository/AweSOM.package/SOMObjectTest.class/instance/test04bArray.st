tests
test04bArray
	| array |
	self loadClazzes: {  #Object. #Array  }.
	array := SOMArray 
		inUniverse: universe
		withSomClass: (universe globalAt: #Array)
		numIndexable: 3.
	array 
		at: 3
		put: 42.
	self 
		assert: (array at: 3)
		equals: 42.
	self 
		should: [ array at: 4 ]
		raise: Error