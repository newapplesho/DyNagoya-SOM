initialization
initialize
	super initialize.
	self
		somInstanceFields: (SOMArray inUniverse: universe);
		somInstanceInvokables: (SOMArray inUniverse: universe);
		somName: (universe newString: '')