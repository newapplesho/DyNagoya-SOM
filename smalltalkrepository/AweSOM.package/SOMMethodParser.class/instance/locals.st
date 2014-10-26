patterns
locals
	[self symIsIdentifier] whileTrue: [
		mgenc addLocalIfAbsent: self variable.
	]