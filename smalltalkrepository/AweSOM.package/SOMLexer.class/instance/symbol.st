lexing
symbol
	| currentChar |
	peekDone ifTrue: [^ self symbolAfterPeek].
	
	self skipWhitespaceAndCommentsOrEnd: [
		sym := #none.
		symChr := nil.
		text := RWBinaryOrTextStream on: String new.
		^ sym
	].

	currentChar := self currentChar.
	
	currentChar == $' ifTrue: [ ^ self matchString ].
	currentChar == $[ ifTrue: [ ^ self match: #newBlock ].
	currentChar == $] ifTrue: [ ^ self match: #endBlock ].
	currentChar == $: ifTrue: [ ^ self matchColonOrAssignment ].
	currentChar == $( ifTrue: [ ^ self match: #newTerm ].
	currentChar == $) ifTrue: [ ^ self match: #endTerm ].
	currentChar == $# ifTrue: [ ^ self match: #pound   ].
	currentChar == $^ ifTrue: [ ^ self match: #exit    ].
	currentChar == $. ifTrue: [ ^ self match: #period  ].
	currentChar == $- ifTrue: [ ^ self matchMinusOrSeparator ].
	(self isOperator: currentChar) ifTrue: [ ^ self matchOperator ].

	(self nextWordInBufIs: self primitive) ifTrue: [ ^ self matchPrimitive ].
	
	currentChar isLetter ifTrue: [ ^ self matchLetter ].
	currentChar isDigit  ifTrue: [ ^ self matchDigit  ].
	
	"else"
	sym    := #none.
	symChr := currentChar.
	text   := RWBinaryOrTextStream with: currentChar asString.
	
	^ sym