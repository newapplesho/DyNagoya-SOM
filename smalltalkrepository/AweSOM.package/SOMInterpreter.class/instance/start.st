initialization
start

	stopped := false.
	[stopped] whileFalse: [| bytecode bytecodeIndex |
		bytecodeIndex := self somFrame bytecodeIndex.
		bytecode := self somMethod bytecodeAt: bytecodeIndex.
		self currentBytecode: bytecode.
		"increase bytecode index here because frame might change
		while dispatching current bytecode"
		self somFrame bytecodeIndex: bytecodeIndex + 1.
		self perform: (self instructionSelectors at: bytecode class).
	]