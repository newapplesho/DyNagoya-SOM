tests
test06RecognizeClassMethods

	| methods |
	self setUpParser: 'Class1 = ( ---- test = () )'.
	self assertNoFail: parser start.
	self assert: parser cgenc isClassSide.
	methods := parser cgenc classMethods.
	self assert: methods size equals: 1.