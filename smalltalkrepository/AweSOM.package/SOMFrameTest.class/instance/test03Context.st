tests
test03Context
	self 
		assert: universe globalNil
		equals: frame somContext.
	self assert: frame = (frame frameAtContextLevel: 1).
	self 
		assert: frame somContext
		equals: (frame frameAtContextLevel: 2).
	frame2 somContext: frame.
	self 
		assert: frame
		equals: frame2 somContext.
	self 
		assert: frame2
		equals: (frame2 frameAtContextLevel: 1).
	self 
		assert: frame2 somContext
		equals: (frame2 frameAtContextLevel: 2).
	self 
		assert: frame2 somContext somContext
		equals: (frame2 frameAtContextLevel: 3)