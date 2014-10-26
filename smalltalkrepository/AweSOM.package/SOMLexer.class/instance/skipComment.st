helper
skipComment
	self currentChar == $" ifTrue: [
		[
			self readNext.
			self readBufferIfEmpty: [^ self].
		] doWhileTrue: [self currentChar ~= $"].
		self readNext.
	].
