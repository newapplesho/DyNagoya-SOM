tests
test04aRecognizeMethodUnary
	| methods |
	self setUpParser: 'Class1 = ( abc = ())'.
	self assertNoFail: parser start.
	methods := parser cgenc instanceMethods.
	self 
		assert: methods size
		equals: 1.
	self 
		assert: methods first signature
		equals: #abc