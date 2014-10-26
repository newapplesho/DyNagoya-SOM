accessing
numberOfSuperInstanceFields
	^ somSuperClass isClass
		ifTrue: [somSuperClass numberOfInstanceFields]
		ifFalse: [0]