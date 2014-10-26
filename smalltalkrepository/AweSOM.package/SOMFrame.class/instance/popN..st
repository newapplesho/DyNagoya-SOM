stack manipulation
popN: numOfElements

	| oldPosition |
	numOfElements = 0 ifTrue: [^ {}].
	oldPosition := self stackPointer.
	oldPosition < (self somMethod numberOfLocals + self somMethod numberOfArguments + numOfElements) 
		ifTrue: [self error: 'Stack is empty'].
	self stackPointer: oldPosition - numOfElements.
	^ self copyFrom: oldPosition - numOfElements + 1 to: oldPosition