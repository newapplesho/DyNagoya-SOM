tests
test09HashEntryRun

	| src |
	src := 'run = ("(")'.
	self setUpParser: src.
	self assertNoFail: (result := parser apply: #method).
"	self halt."