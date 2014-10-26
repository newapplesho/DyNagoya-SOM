accept and expect
accept: aSymbol
	sym == aSymbol ifTrue: [
		self getSym.
		^ true ].

	^ false