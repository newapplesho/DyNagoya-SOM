tests
test04Array

	| array |
	array := SOMArray inUniverse: universe size: 2.
	array at: 1 put: 42.
	array at: 2 put: 23.
	self assert: (array at: 1) equals: 42.
	self assert: (array at: 2) equals: 23