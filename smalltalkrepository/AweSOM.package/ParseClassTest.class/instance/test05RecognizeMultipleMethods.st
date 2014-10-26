tests
test05RecognizeMultipleMethods

	| methods |
	self setUpParser: 'Class1 = ( a: x abc: y = ()
     & bool = ()
	test = ()
)'.
	self assertNoFail: parser start.
	methods := parser cgenc instanceMethods.
	self assert: methods size equals: 3.