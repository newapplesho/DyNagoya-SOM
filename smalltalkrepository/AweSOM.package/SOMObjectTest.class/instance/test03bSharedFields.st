tests
test03bSharedFields
	| clazz1 clazz2 somFieldCnt clsIdx |
	somFieldCnt := SOMObject allSharedFields size.
	clsIdx := somFieldCnt + 1.
	
	clazz1 := universe classClass inUniverse: universe.
	clazz2 := universe classClass inUniverse: universe.
	clazz1 somSuperClass: clazz2.
	self 
		assert: clazz2
		equals: clazz1 somSuperClass.
	self 
		assert: clazz2
		equals: (clazz1 fieldAtIndex: clsIdx ).
	clazz1 somSuperClass: nil.
	self 
		assert: nil
		equals: clazz1 somSuperClass.
	self 
		assert: nil
		equals: (clazz1 fieldAtIndex: clsIdx).
	clazz1 
		fieldAtIndex: clsIdx
		put: clazz2.
	self 
		assert: clazz2
		equals: clazz1 somSuperClass.
	self 
		assert: clazz2
		equals: (clazz1 fieldAtIndex: clsIdx)