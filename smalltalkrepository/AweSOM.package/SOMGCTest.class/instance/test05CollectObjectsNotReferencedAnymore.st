as yet unclassified
test05CollectObjectsNotReferencedAnymore

	| arr object2 |
	arr := SOMArray inUniverse: universe size: 1.
	universe globalAt: #test put: arr.
	object2 := SOMObject inUniverse: universe.
	arr at: 1 put: object2.
	self assert: universe heap objects size equals: 2.
	universe heap collectGarbage.
	self assert: universe heap objects size equals: 2.
	arr at: 1 put: nil.
	universe heap collectGarbage.
	self assert: universe heap objects size equals: 1.