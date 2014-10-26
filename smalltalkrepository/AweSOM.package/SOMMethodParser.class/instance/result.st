patterns
result
	self expression.
	
	mgenc isBlockMethod
		ifTrue:  [ mgenc bcReturnNonLocal ]
		ifFalse: [ mgenc bcReturnLocal    ].
	
	mgenc finished.
	
	self accept: #period.