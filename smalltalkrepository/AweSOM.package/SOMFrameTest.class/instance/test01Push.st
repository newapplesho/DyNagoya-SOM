tests
test01Push
	self assert: frame stackPointer equals: 0.
	frame push: 'A'.
	self assert: frame stackPointer equals: 1