patterns
blockContents
	(self accept: #or) ifTrue: [
		self locals.
		self expect: #or.
	].

	self blockBody: false.