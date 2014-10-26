tests
test01SimpleMethodDef

	self setUpParser: 'x = (1)'.
	self assertNoFail: (result := parser apply: #method).
	self assert: (result isKindOf: SOMMethodGenerationContext).
	self 
		assert: result signature
		equals: #x