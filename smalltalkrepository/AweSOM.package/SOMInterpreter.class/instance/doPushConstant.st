bytecode processing
doPushConstant
	self somFrame push: (self currentBytecode literalValue)