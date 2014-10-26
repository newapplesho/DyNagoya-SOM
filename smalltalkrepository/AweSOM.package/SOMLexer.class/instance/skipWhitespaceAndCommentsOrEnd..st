helper
skipWhitespaceAndCommentsOrEnd: atEndBlock
	[	self hasMoreInput ifFalse: atEndBlock.
		self skipWhitespace.
		self skipComment.
	] doWhileTrue: [
		self endOfBuffer 				or: [
		self currentChar isSeparator 	or: [
		self currentChar == $" ]]].