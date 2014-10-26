bootstrapping
bootstrapMethod

	^ self methodClass
		inUniverse: self
		named: #bootstrap
		numArgs: 1
		numLocals: 0
		maxStackDepth: 2
		bytecodes: {SOMBCHalt new}
		holder: (self globalAt: #System)
		lexicalContext: self globalNil.
