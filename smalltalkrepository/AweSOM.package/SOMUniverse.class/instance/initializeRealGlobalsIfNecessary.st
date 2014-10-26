initializing
initializeRealGlobalsIfNecessary

	self globalAt: #Array ifAbsent: [self initializeRealGlobals].