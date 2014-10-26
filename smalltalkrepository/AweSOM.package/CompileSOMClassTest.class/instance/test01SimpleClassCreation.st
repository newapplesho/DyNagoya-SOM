as yet unclassified
test01SimpleClassCreation

	| cgenc clazz |
	cgenc := SOMClassGenerationContext new.
	cgenc theName: 'Robert'.
	cgenc instanceFields: {  'alter'. 'adresse'  }.
	clazz := cgenc assembleIn: universe.
	self assert: (clazz isKindOf: SOMClass).
	self assert: clazz somName symbol equals: #Robert.
	self assert: clazz somClass somName symbol equals: #'Robert class'.
	self assert: clazz somSuperClass equals: (universe globalAt: #Object).
	self assert: clazz somInstanceFields size equals: 2.
	self assert: (clazz somInstanceFields at: 1) string equals: 'alter'