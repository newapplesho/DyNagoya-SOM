initialization
initialize
	somContext := universe globalNil.
	self localOffset: 0.
	self bytecodeIndex: 0.
	self stackPointer: 0.
	self clearPreviousFrame