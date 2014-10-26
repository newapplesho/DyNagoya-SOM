assembling
createEmptyClassIn: universe

	| superclass |
	superclass := universe
		globalAt: self superName
		ifAbsent: [universe loadSOMClass: self superName].
	^ universe classClass 
		inUniverse: universe
		withSomSuperClass: superclass.