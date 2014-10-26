as yet unclassified
assertSuperClassOf: className is: superClassName

	self
		assert: (universe globalAt: superClassName)
		equals: (universe globalAt: className) somSuperClass.