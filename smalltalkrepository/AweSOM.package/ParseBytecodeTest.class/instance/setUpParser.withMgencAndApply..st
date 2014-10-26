running
setUpParser: source withMgencAndApply: rule

	self setUpParser: source.
	result := parser apply: rule.
	(result respondsTo: #bytecode) ifTrue: [
		bytecode := result bytecode]