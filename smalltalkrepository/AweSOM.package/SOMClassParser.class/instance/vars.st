patterns
vars
	(self accept: #or) ifTrue: [
		[self symIsIdentifier] whileTrue: [
			cgenc addField: self variable.
		].
		
		self expect: #or.
	]