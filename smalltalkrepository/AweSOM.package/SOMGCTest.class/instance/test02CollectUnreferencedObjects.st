as yet unclassified
test02CollectUnreferencedObjects

	| object |
	self assert: universe heap objects isEmpty.
	object := SOMObject inUniverse: universe.
	self assert: universe heap objects size equals: 1.
	universe heap collectGarbage.
	self assert: universe heap objects isEmpty.