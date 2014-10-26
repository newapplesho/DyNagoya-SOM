tests
test04bRecognizeMethodBinary
	| methods |
	self setUpParser: 'Class1 = ( & a = ())'.
	self assertNoFail: parser start.
	methods := parser cgenc instanceMethods.
	self 
		assert: methods size
		equals: 1.
	self 
		assert: methods first signature
		equals: #&