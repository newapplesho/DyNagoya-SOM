code evaluation
eval: code

	| shellClassSource shellClass |
	self initializeRealGlobalsIfNecessary.
	shellClassSource := self createShellClassWith: code.
	shellClass := self loadAndStoreFromSource: shellClassSource.
	self start: {shellClass somName string}.