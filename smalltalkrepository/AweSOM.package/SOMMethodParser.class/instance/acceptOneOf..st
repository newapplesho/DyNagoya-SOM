accept and expect
acceptOneOf: symbols
	(self symIn: symbols) ifTrue: [
		self getSym.
		^ true ].

	^ false