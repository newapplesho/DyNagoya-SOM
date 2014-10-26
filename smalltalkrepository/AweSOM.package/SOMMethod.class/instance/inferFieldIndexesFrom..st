as yet unclassified
inferFieldIndexesFrom: holder

	self flag: #rkrk. "Cleanup using polymorphism or replace mechanism"
	bytecodes do: [:bytecode |
		(bytecode isKindOf: SOMBytecodeWithFieldIndex) 
			ifTrue: [bytecode inferFieldIndexFrom: holder].
		"infer recursively if block"
		(bytecode isKindOf: SOMBCPushBlock) 
			ifTrue: [bytecode literalValue 
				inferFieldIndexesFrom: holder]].