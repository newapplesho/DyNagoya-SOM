lexing
matchDigit
	sym    := #integer.
	symChr := nil.
	text   := RWBinaryOrTextStream on: String new.

	[ text nextPut: self currentChar.
	  self readNext
	] doWhileTrue: [self currentChar notNil and: [ self currentChar isDigit ]].

	^ sym