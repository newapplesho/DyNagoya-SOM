assertion
assertBcAt: idx is: bcType

	self assert: ((bytecode at: idx) isKindOf: bcType).