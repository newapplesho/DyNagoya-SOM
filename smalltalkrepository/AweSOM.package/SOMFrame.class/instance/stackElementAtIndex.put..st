as yet unclassified
stackElementAtIndex: index put: object
	self at: (self stackPointer - index + 1) 
		put: object