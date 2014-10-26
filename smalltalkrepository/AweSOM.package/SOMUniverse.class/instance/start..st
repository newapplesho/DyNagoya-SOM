initializing
start: arguments

	| wrappedArguments |
 	self initializeRealGlobalsIfNecessary.
	wrappedArguments := arguments collect: [ :arg | self newString: arg].
	self bootstrapWithArguments: (SOMArray inUniverse: self withAll: wrappedArguments).