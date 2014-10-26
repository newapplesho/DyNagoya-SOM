tests
test23MultipleAssignments

	self setUpParser: 'x: a=(1 + a)' andApply: #method.
	self assertNoFail: result.
	self assertBcAt: 2 is: SOMBCPushArgument.
	self assert: bytecode second index equals: 2. "1 is self"
	self assert: bytecode second contextIndex equals: 1.