patterns
foreignParseMethod
	| parser result |
	parser := self methodParser.
	parser parseState: self parseState.
	
	result := parser apply: #method.
	
	cgenc addMethod: result.
	self parseState: parser parseState.
	^ result