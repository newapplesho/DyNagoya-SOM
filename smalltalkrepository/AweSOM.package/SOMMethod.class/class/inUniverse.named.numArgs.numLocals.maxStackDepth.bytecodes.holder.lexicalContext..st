instance creation
inUniverse: universe named: squeakSymbol numArgs: nArgs numLocals: nLoc maxStackDepth: nStack bytecodes: bc holder: holder lexicalContext: ctx

	^ (self
		inUniverse: universe
		named: squeakSymbol
		numArgs: nArgs)
		numberOfLocals: nLoc;
		maxStackDepth: nStack;
		bytecodes: bc;
		somHolder: holder;
		lexicalContext: ctx;
		yourself.
		
		