as yet unclassified
stackElementAtIndex: index
	^ self at: (self stackPointer - index + 1) 