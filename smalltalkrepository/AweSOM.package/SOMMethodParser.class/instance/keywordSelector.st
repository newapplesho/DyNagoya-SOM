selector patterns
keywordSelector
	| s |
	s := text asSymbol.
	
	self expectOneOf: KeywordSelectorSyms.
	
	^ s