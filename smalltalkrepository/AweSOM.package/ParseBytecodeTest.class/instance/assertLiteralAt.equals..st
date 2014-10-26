assertion
assertLiteralAt: idx equals: expected

	| literal |
	literal := (bytecode at: idx) literalValue.
	self assert: literal equals: expected.