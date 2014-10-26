patterns
assignments: vars
	self symIsIdentifier ifTrue: [
		| var |
		var := self assignment.
		
		self peek.
		
		nextSym == #assign ifTrue: [
			self assignments: vars.
		].
	
		vars add: var.
	]