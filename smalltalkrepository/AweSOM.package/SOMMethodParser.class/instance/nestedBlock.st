patterns
nestedBlock
	self expect: #newBlock.
	
	mgenc isBlockMethod: true.
	
	self blockArgPattern.
	self blockContents.
	
	mgenc isFinished ifFalse: [
		mgenc bcReturnLocal; finished.
	].

	self expect: #endBlock.
	
	^ mgenc