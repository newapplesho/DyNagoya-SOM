helper
methodParser
	^ super methodParser
		mgenc: (universe methodGenClass blockIn: mgenc);
		yourself