tests
test06ClassClassHasCorrectInstanceFields

	| classClass |
	self loadClazzes: #(#Object #Class).
	classClass := universe globalAt: #Class.
	self
		assert: classClass allInstanceFields
		equals: #('class' 'superClass' 'name' 'instanceFields' 'instanceInvokables')