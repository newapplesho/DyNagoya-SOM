lexing
matchLetter
	symChr := nil.
	text := RWBinaryOrTextStream on: String new.
	
	[self currentChar notNil and: [
		 self currentChar isLetter or: [
		 self currentChar isDigit  or: [
		 self currentChar == $_]]]]
		whileTrue: [
			text nextPut: self currentChar.
			self readNext.
		].
	
	sym := #identifier.
	
	self currentChar == $: ifTrue: [
		sym := #keyword.
		self readNext.
		text nextPut: $:.
		
		(self currentChar notNil and: [self currentChar isLetter]) ifTrue: [
			sym := #keywordSequence.
			[self currentChar isLetter or: [self currentChar == $:]]
				whileTrue: [
					text nextPut: self currentChar.
					self readNext.
				]
		]
	].

	^ sym