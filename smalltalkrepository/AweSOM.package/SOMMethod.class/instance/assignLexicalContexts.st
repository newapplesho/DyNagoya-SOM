initialization
assignLexicalContexts
	self bytecodes
		select: [ :bc | bc isPushBlock ]
		thenDo: [ :bc | bc literalValue lexicalContext: self ].
	^ self