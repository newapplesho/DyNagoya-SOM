tests
test07AccessInstanceVars

	| mgenc bc |
	self setUpParser: 'Class1 = (|a| y = (^a))'.
	self assertNoFail: parser start.
	mgenc := parser cgenc instanceMethods first.
	bc := mgenc bytecode.
	self assert: (bc first isKindOf: SOMBCPushField).
	self assert: (bc second isKindOf: SOMBCReturnLocal).