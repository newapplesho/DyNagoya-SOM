tests
test02FieldAccess
	| object1 object2 |
	object1 := SOMObject inUniverse: universe withNumberOfAdditionalFields: 1.
	object2 := SOMObject inUniverse: universe withNumberOfAdditionalFields: 0.
	object1 
		fieldAtIndex: 1
		put: object2.
	self 
		assert: (object1 fieldAtIndex: 1)
		equals: object2