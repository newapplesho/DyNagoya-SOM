tests
test03aSharedFields
	| clazz object somFieldCnt |
	somFieldCnt := SOMObject allSharedFields size.
	
	clazz := SOMObject inUniverse: universe.
	object := SOMObject 
		inUniverse: universe
		withNumberOfAdditionalFields: 0.
	object somClass: clazz.
	
	self 
		assert: object somClass
		equals: (object fieldAtIndex: 1).
	object somClass: nil.
	object 
		fieldAtIndex: 1
		put: clazz.
	self 
		assert: object somClass
		equals: (object fieldAtIndex: 1).
	self 
		should: [ object fieldAtIndex: 1 + somFieldCnt ]
		raise: Error.
	self 
		should: 
			[ object 
				fieldAtIndex: 1 + somFieldCnt
				put: 42 ]
		raise: Error