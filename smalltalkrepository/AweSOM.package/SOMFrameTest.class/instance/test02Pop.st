tests
test02Pop
	frame push: 'A'.
	self assert: 'A' equals: (frame pop).
	
	frame push: 'A'.
	frame push: 'B'.
	self assert: 'B' equals: (frame pop);
		assert: 'A' equals: (frame pop).