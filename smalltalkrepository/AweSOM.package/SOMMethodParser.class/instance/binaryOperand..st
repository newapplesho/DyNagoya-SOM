patterns
binaryOperand: superSend
	| doSuper |
	doSuper := self primary: superSend.
	
	[self symIsIdentifier] whileTrue:
		[self unaryMessage: doSuper].
	
	^ doSuper