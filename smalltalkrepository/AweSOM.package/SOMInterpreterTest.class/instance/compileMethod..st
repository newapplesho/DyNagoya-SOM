running
compileMethod: source 

	| parser mgenc |
	parser := universe methodParser inUniverse: universe onSource: source.
	mgenc := parser apply: #method.
	^ mgenc assembleIn: universe.