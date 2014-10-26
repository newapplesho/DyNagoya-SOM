lexing
matchMinusOrSeparator
	(self nextInBufIs: self seperator) ifTrue: [
		text := RWBinaryOrTextStream on: String new.
		[self currentChar == $-] whileTrue: [
			text nextPut: $-.
			self readNext.
		].
		sym := #seperator.
		^ sym.
	].

	^ self match: #minus.
	