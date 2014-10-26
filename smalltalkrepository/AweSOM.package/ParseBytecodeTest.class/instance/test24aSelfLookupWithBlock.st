tests
test24aSelfLookupWithBlock

	| blockBc |
	self setUpParser: 'x: a=( [self].)' andApply: #method.
	self assertNoFail: result.
	blockBc := (result literals at: bytecode first index ) bytecodes.
	self assert: (blockBc first isKindOf: SOMBCPushArgument).
	self assert: blockBc first index equals: 1.
	self assert: blockBc first contextIndex equals: 2.