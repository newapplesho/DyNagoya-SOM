assertion
assertLiteralAt: idx accessor: accessorSelector equals: expected

	| literal inner |
	literal := (bytecode at: idx) literalValue.
	self
		assert: (literal respondsTo: accessorSelector)
		description: 'wrong kind of SOMObject?'.
	inner := literal perform: accessorSelector.
	self assert: inner equals: expected.