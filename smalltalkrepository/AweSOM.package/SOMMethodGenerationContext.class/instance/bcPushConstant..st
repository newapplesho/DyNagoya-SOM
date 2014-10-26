bytecode
bcPushConstant: const
	self addLiteralIfAbsent: const.
	self bytecode add: (SOMBCPushConstant in: self index: (self literalIndex: const)).