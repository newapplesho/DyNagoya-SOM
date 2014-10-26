as yet unclassified
test02BuildByteCode
	| mgenc method |
	mgenc := self createMgencFromSource: 'x: a = (|aLocal| ^a)'.
	method := mgenc assembleIn: universe.
	{SOMBCPushArgument. SOMBCReturnLocal} withIndexDo: [:each :i|
		self assert: ((method bytecodeAt: i) isKindOf: each)].
	self assert: method numberOfLocals equals: 1.
	self assert: method numberOfArguments equals: 2.
