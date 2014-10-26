patterns
literal
	sym == #pound    ifTrue: [ ^ self literalSymbol. ].
	sym == #STString ifTrue: [ ^ self literalString. ].

	self literalNumber.