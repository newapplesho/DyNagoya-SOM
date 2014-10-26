tests
test04cRecognizeKeywordMethod
	| methods |
	self setUpParser: 'Class1 = ( a: x abc: y = ())'.
	self assertNoFail: parser start.
	methods := parser cgenc instanceMethods.
	self 
		assert: methods size
		equals: 1.
	self 
		assert: methods first signature
		equals: #a:abc: