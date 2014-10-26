as yet unclassified
createMgencFromSource: source
	
	| parser |
	parser := universe methodParser inUniverse: universe onSource: source.
	^ parser apply: #method.