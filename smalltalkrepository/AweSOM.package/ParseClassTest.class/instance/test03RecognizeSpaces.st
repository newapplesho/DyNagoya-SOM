tests
test03RecognizeSpaces

	self setUpParser: '"bla " Class1 = ()'.
	self assertNoFail: parser start.
	self assert: parser cgenc theName equals: #Class1.