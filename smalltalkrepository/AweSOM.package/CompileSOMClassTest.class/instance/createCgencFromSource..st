as yet unclassified
createCgencFromSource: source
	
	| parser |
	parser := universe classParser inUniverse: universe onSource: source.
	parser start.
	^ parser cgenc.