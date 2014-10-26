patterns
blockBody: hasSeenPeriod
	(self accept: #exit) ifTrue: [
		^ self result.
	].

	sym == #endBlock ifTrue: [
		hasSeenPeriod ifTrue: [ mgenc removeLastBytecode ].
		^ mgenc
			bcReturnLocal;
			finished.
	].

	sym == #endTerm ifTrue: [
		^ mgenc returnSelf; finished.
	].

	self expression.
	(self accept: #period) ifTrue: [
		mgenc bcPop.
		self blockBody: true.
	].
