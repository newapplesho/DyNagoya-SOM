printing
bytecodeString

	^ String streamContents: [:s |
		self
			bytecodeStringTab: 0
			stream: s].