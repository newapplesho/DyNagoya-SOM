as yet unclassified
test05CollectObjectsNotReferencedAnymore

	| object object2 |
	object := SOMObject inUniverse: universe.
	universe globalAt: #test put: object.
	object2 := SOMObject inUniverse: universe.
	object fieldAtIndex: 1 put: object2.
	self assert: universe heap objects size equals: 2.
	universe heap collectGarbage.
	self assert: universe heap objects size equals: 2.
	object fieldAtIndex: 1 put: nil.
	universe heap collectGarbage.
	self assert: universe heap objects size equals: 1.