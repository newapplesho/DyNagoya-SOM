patterns
methodBlock
	self expect: #newTerm.
	self blockContents.
	
	mgenc isFinished ifFalse: [
		mgenc
			bcPop;
			returnSelf;
			finished.
	].

	self expect: #endTerm.