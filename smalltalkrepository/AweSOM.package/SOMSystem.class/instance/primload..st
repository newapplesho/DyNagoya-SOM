primitives
primload: clazzName

	| loadedClazz |
	loadedClazz := self universe loadSOMClass: clazzName string.
	^ loadedClazz
		ifNil: [self universe globalNil]
		ifNotNil: [loadedClazz].