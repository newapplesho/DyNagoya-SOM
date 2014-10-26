running
setUp
	super setUp.
	universe := SOMUniverse default new.
	universe initializeFakeGlobals.