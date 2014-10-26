stack manipulation
pop

	| oldPosition |
	oldPosition := self stackPointer.
	oldPosition <= (self somMethod numberOfLocals + self somMethod numberOfArguments) 
		ifTrue: [self error: 'Stack is empty'].
	self stackPointer: oldPosition - 1.
	^ self at: oldPosition