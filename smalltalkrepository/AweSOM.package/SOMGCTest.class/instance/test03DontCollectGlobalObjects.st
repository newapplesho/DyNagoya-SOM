as yet unclassified
test03DontCollectGlobalObjects

	| object |
	object := SOMObject inUniverse: universe.
	universe globalAt: #test put: object.
	self assert: universe heap objects size equals: 1.
	universe heap collectGarbage.
	self assert: universe heap objects size equals: 1.