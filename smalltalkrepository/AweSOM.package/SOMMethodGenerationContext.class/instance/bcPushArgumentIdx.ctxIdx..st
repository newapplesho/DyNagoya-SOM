bytecode
bcPushArgumentIdx: i1 ctxIdx: i2

	self bytecode add: (SOMBCPushArgument in: self index: i1 contextIndex: i2).