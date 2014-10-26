bytecode
bcPopArgumentIndex: i1 ctxIdx: i2

	self bytecode add: (SOMBCPopArgument in: self index: i1 contextIndex: i2).