as yet unclassified
test02CompileClass
	| cgenc clazz |
	cgenc := SOMClassGenerationContext new.
	cgenc classFields: {  'alter'  }.
	clazz := cgenc assembleIn: universe.
	self 
		assert: (clazz somClass somInstanceFields at: 1) string
		equals: 'alter'