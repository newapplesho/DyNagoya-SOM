tests
test02ClassInstVars

	self setUpParser: 'Class1 = ( | a b cdef |)'.
	self assertNoFail: parser start.
	self
		assert: parser cgenc instanceFields
		equals: {'a'. 'b'. 'cdef'} asOrderedCollection.