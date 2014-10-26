patterns
parseNestedBlock
	| parser result blockMethod |
	
	parser := self methodParser.
	parser parseState: self parseState.
	
	result := parser apply: #nestedBlock.
	
	blockMethod := result assembleIn: universe.
	mgenc bcPushBlock: blockMethod.
	
	self parseState: parser parseState.
	
	^ result