accept and expect
expectOneOf: syms
	| msg |
	(self acceptOneOf: syms)
		ifTrue: [	^ true. ].
	
	msg := RWBinaryOrTextStream on: String new.
	msg nextPutAll: 'unexpected symbol in line '.
	msg nextPutAll: lexer currentLineNumber asString.
	msg nextPutAll: '. Expected one of '.
	
	syms do: [:s | 
		msg nextPutAll: s.
		msg nextPutAll: ', '].
	
	msg nextPutAll: 'but found '.
	msg nextPutAll: sym asString.
	
	self printableSymbol ifTrue: [
		msg nextPutAll: ' (', text contents, ')'].
	
	msg nextPutAll: ': '.
	msg nextPutAll: lexer rawBuffer.
	
	Error signal: msg.