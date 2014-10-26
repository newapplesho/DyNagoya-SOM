tests
test12SimpleOperatorMethodDef

	self setUpParser: '& bool = ()'.
	self assertNoFail: (result := parser apply: #method).
	self assert: (result isKindOf: SOMMethodGenerationContext).
	self assert: result signature 			equals: '&'.
	self assert: result arguments size  		equals: 2.
	self assert: result arguments first 		equals: #self.
	self assert: result arguments second 	equals: #bool.