running
setUpParser: source andApply: rule

	super setUpParser: source andApply: rule.
	(result respondsTo: #bytecode) ifTrue: [
		bytecode := result bytecode]