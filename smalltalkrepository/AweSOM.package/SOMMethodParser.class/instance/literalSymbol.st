patterns
literalSymbol
	| symbol |
	self expect: #pound.
	symbol := sym == #STString	 ifTrue:  [universe newSymbol: self string]
									 ifFalse: [universe newSymbol: self selector].
	
	mgenc addLiteralIfAbsent: symbol.
	mgenc bcPushConstant: symbol.