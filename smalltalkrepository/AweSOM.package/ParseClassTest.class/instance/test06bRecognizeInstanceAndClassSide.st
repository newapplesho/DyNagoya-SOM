tests
test06bRecognizeInstanceAndClassSide

	self setUpParser: 'Class1 = ( | a | y = (1) ---- | a | test = ())'.
	self assertNoFail: parser start.
	self assert: parser cgenc instanceMethods size equals: 1.
	self assert: parser cgenc instanceFields size equals: 1.
	self assert: parser cgenc classMethods size equals: 1.
	self assert: parser cgenc classFields size equals: 1.