assembling
assembleIn: universe

	^ self
		assembleIn: universe
		stub: (self createEmptyClassIn: universe).