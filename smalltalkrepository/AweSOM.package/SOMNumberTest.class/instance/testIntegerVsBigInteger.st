as yet unclassified
testIntegerVsBigInteger

	| n |
	n := universe newNumber: SOMInteger maxInt.
	self assert: n class equals: SOMInteger.
	n := universe newNumber: SOMInteger maxInt + 1.
	self assert: n class equals: SOMBigInteger.