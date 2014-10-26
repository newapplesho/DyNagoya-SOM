lexing
matchString
	sym := #STString.
	symChr := nil.
	text := RWBinaryOrTextStream on: String new.
	
	self readNext. "skip start $' "
	[ self currentChar == $' ]
		whileFalse: [
			text nextPut: self currentChar.
			self readNext.
		].
	
	self readNext. "skip the ending $'"
	
	^ sym