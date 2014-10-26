tests
test10BigIntegerTestRun

	| src |
	src := 'run: harness = (-1)'.
	self setUpParser: src.
	self assertNoFail: (result := parser apply: #method).
"	self halt."