helper
readBufferIfEmpty: aBlock
	[self endOfBuffer] whileTrue: [
		self fillBuffer == -1
			ifTrue: aBlock]