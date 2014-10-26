patterns
selector
	(sym == #operatorSequence or: [self symIn: SingleOpSyms])
		ifTrue: [^ self binarySelector ].
	
	(sym == #keyword or: [sym == #keywordSequence])
		ifTrue: [^ self keywordSelector].
	
	^ self unarySelector