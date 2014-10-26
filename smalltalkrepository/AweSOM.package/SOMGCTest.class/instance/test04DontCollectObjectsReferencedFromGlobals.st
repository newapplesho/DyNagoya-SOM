as yet unclassified
test04DontCollectObjectsReferencedFromGlobals

	| arr object |
	arr := SOMArray inUniverse: universe size: 1.
	universe globalAt: #test put: arr.
	object := SOMObject inUniverse: universe.
	arr at: 1 put: object.
	self assert: universe heap objects size equals: 2.
	universe heap collectGarbage.
	self assert: universe heap objects size equals: 2.