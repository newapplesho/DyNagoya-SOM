patterns
messages: superSend
	| doSuper |
	doSuper := superSend.
		
	self symIsIdentifier ifTrue: [
		[ self unaryMessage: doSuper.
		  doSuper := false.
		] doWhileTrue: [self symIsIdentifier].
		
		[sym == #operatorSequence or: [self symIn: BinaryOpSyms]] whileTrue: [
			self binaryMessage: false.
		].
	
		sym == #keyword ifTrue: [
			self keywordMessage: false.
		].
		^ doSuper.
	].

	(sym == #operatorSequence or: [self symIn: BinaryOpSyms]) ifTrue: [
		[ self binaryMessage: doSuper.
		  doSuper := false.
		] doWhileTrue: [sym == #operatorSequence or: [self symIn: BinaryOpSyms]].
		
		sym == #keyword ifTrue: [
			self keywordMessage: false.
		].
		^ doSuper.
	].

	self keywordMessage: doSuper.
