initialization
initialize
	super initialize.
	somSuperClass := universe globalNil.
	somName  := universe globalNil.
	somInstanceFields  := universe globalNil.
	somInstanceInvokables  := universe globalNil.
	self
		somInstanceFields: (SOMArray inUniverse: universe);
		somInstanceInvokables: (SOMArray inUniverse: universe);
		somName: (universe newString: '')