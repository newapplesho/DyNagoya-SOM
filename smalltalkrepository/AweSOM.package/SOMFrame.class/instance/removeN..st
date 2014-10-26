stack manipulation
removeN: numOfElements

	| oldPosition |
	numOfElements = 0 ifTrue: [^ self].
	oldPosition := self stackPointer.
	oldPosition < (self somMethod numberOfLocals + self somMethod numberOfArguments + numOfElements) 
		ifTrue: [self error: 'Stack is empty'].
	self stackPointer: oldPosition - numOfElements.