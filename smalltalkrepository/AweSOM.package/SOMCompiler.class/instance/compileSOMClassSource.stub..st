compiling
compileSOMClassSource: source stub: classStubOrNil

	| cgenc |
	cgenc := (universe classParser inUniverse: universe onSource: source) start.
	^ classStubOrNil
		ifNil: [cgenc assembleIn: universe]
		ifNotNil: [cgenc assembleIn: universe stub: classStubOrNil].