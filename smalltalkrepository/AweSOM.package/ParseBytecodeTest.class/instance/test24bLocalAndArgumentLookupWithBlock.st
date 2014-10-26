tests
test24bLocalAndArgumentLookupWithBlock

	| innerBlockBc firstInnerBlock |
	self setUpParser: 'x: a y: b=([ |x y| [b + y] ])' andApply: #method.
	self assertNoFail: result.
	firstInnerBlock := (result literals at: bytecode first index) bytecodes first.
	innerBlockBc := (firstInnerBlock mgenc literals at: firstInnerBlock index) bytecodes.
	self assert: (innerBlockBc first isKindOf: SOMBCPushArgument).
	self assert: innerBlockBc first index equals: 3. "first is self, second a, third b"
	self assert: innerBlockBc first contextIndex equals: 3.
	self assert: (innerBlockBc second isKindOf: SOMBCPushLocal).
	self assert: innerBlockBc second index equals: 2.
	self assert: innerBlockBc second contextIndex equals: 2.