adding
addFields: fieldNames

	^ self isClassSide
		ifTrue: [self classFields: fieldNames]
		ifFalse: [self instanceFields: fieldNames]