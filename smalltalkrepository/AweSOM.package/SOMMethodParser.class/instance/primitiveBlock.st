patterns
primitiveBlock
	self expect: #primitive.
	mgenc fakeSource: '^ SOMPrimitives ', 
						 self cgenc theName,
						 mgenc combineSelectorAndArgs.