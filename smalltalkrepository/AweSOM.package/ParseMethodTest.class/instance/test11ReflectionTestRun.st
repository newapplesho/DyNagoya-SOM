tests
test11ReflectionTestRun

	| src |
	src := 'run: harness = (self x: #==)'.
	self setUpParser: src.
	self assertNoFail: (result := parser apply: #method).
"	self halt."