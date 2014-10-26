tests
test06aRecognizeClassSide

	self setUpParser: 'Class1 = ( ---- | a | test = () x = (1 +2))'.
	self assertNoFail: parser start.
	self assert: parser cgenc isClassSide.
	self assert: parser cgenc classMethods size equals: 2.
	self assert: parser cgenc classFields size equals: 1.