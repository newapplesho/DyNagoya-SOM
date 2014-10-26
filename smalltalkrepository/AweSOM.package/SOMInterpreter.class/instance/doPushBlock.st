bytecode processing
doPushBlock
	| blockMethod block |
	blockMethod := self currentBytecode literalValue.
	block := (SOMBlock inUniverse: self universe)
		somClass: (self universe globalAt: #Block);
		somBlockMethod: blockMethod;
		somContext: self somFrame.
	self somFrame push: block