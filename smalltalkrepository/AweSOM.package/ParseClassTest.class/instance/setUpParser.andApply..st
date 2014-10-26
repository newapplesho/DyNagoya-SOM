running
setUpParser: source andApply: rule

	self setUpParser: source.
	result := parser apply: rule.