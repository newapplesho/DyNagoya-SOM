helper
skipWhitespace
	[self currentChar isSeparator]
		whileTrue: [
			self readNext.
			self readBufferIfEmpty: [^ self]]