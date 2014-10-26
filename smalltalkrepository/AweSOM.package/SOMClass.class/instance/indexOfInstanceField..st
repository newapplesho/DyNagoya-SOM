accessing
indexOfInstanceField: aSOMSymbol 

	| index |
	index := self somInstanceFields indexOf: aSOMSymbol.
	^ (index = 0 and: [self hasSuperClass])
		ifTrue: [self somSuperClass indexOfInstanceField: aSOMSymbol]
		ifFalse: [self numberOfSuperInstanceFields + index].