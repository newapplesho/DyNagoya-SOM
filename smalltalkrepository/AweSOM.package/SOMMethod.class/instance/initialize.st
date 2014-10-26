initialization
initialize

	super initialize.
	self
		maxStackDepth: 0;
		numberOfLocals: 0;
		constants: #();
		bytecodes: #();
		lexicalContext: nil.