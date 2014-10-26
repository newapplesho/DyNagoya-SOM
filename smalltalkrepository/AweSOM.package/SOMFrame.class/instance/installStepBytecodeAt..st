debugging
installStepBytecodeAt: stepBytecodeIndex
	"replace next bytecode with step bytecode"
	
	| bytecode stepBytecode |
	bytecode := self somMethod bytecodeAt: stepBytecodeIndex.
	bytecode ifKindOf: SOMBCStep thenDo: [^ bytecode owningFrames add: self].
	stepBytecode := (SOMBCStep new)
		originalBytecode: bytecode;
		owningFrames: {self} asSet;
		yourself.
	self somMethod bytecodeAt: stepBytecodeIndex put: stepBytecode