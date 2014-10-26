tests
test05UniverseAccess

	| array |
	array := SOMArray inUniverse: universe withNumberOfAdditionalFields: 2.
	self assert: array universe globalNil equals: universe globalNil.