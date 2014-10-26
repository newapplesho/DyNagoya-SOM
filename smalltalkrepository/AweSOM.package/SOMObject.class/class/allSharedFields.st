accessing
allSharedFields

	^ self allInstVarNames select: [:each | each beginsWith: 'som']