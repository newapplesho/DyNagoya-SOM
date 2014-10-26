instance creation
lookupVar: varName inMethodContext: mgenc inUniverse: universe

	^ self new
		varName: varName;
		mgenc: mgenc;
		universe: universe;
		lookup;
		yourself.