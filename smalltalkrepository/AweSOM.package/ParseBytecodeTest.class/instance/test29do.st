tests
test29do
	| block |
	self setUpParser: 'do: block = ( self doIndexes: [ :i | block value: (self at: i) ] )' andApply: #method.
	self assertNoFail: result.

	self assertBcAt: 1 is: SOMBCPushArgument.
	self assert: (bytecode at: 1) index equals: 1.
	self assert: (bytecode at: 1) contextIndex equals: 1.
	
	self assertBcAt: 2 is: SOMBCPushBlock.
	self assert: (bytecode at: 2) index equals: 1.
	self assert: ((bytecode at: 2) literalValue isKindOf: SOMMethod).
	
	self assertBcAt: 3 is: SOMBCSend.
	self assert: (bytecode at: 3) index equals: 2.
	self assert: (bytecode at: 3) literalValue equals: #doIndexes:.
	self assert: (bytecode at: 3) literalValue class equals: ByteSymbol.
	
	self assertBcAt: 4 is: SOMBCPop.
	self assertBcAt: 5 is: SOMBCPushArgument.
	self assertBcAt: 6 is: SOMBCReturnLocal.
	
	block := (bytecode at: 1) literalValue.
	bytecode := block bytecodes.
	
	self assertBcAt: 1 is: SOMBCPushArgument.
	self assertBcAt: 2 is: SOMBCPushArgument.
	self assertBcAt: 3 is: SOMBCPushArgument.
	self assertBcAt: 4 is: SOMBCSend.
	self assertBcAt: 5 is: SOMBCSend.
	self assertBcAt: 6 is: SOMBCReturnLocal.