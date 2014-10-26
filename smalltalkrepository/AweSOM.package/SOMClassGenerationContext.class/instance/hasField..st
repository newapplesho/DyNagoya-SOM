testing
hasField: fieldName

	^ self isClassSide
		ifTrue: [self classFields includes: fieldName]
		ifFalse: [self instanceFields includes: fieldName]