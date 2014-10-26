bytecode
bcPushLocalIndex: i1 ctxIndex: i2

	self bytecode add: (SOMBCPushLocal in: self index: i1 contextIndex: i2).