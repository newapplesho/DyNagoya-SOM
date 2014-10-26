tests
test01SimpleClassDef

	self setUpParser: 'Class1 = ()'.
	self assertNoFail: parser start.
	self assert: parser cgenc theName equals: #Class1.
	self assert: parser cgenc superName equals: #Object.