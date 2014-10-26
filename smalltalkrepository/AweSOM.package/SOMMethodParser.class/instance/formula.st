patterns
formula
	| superSend |
	superSend := self binaryOperand: false.
	
	(sym == #operatorSequence or: [self symIn: BinaryOpSyms])
		ifTrue: [self binaryMessage: superSend ].
	
	"only the first message in a sequence can be a super send"
	[sym == #operatorSequence or: [self symIn: BinaryOpSyms]]
		whileTrue: [self binaryMessage: false ].