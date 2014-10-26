tests
test01CreateSimpleObject
	| object somFieldCnt |
	somFieldCnt := SOMObject allSharedFields size.
	
	object := SOMObject inUniverse: universe withNumberOfAdditionalFields: 1.
	
	
	"Objects now come with a default class"
	"self 
		assert: (object fieldAtIndex: 1)
		equals: (universe globalAt: #nil)."
	self 
		assert: (object fieldAtIndex: somFieldCnt + 1)
		equals: (universe globalNil).
	self assert: object numberOfFields equals: somFieldCnt + 1.