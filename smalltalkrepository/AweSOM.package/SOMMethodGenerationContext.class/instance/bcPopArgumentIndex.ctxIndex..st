bytecode
bcPopArgumentIndex: idx ctxIndex: ctxIdx

	self bytecode add: (SOMBCPopArgument in: self index: idx contextIndex: ctxIdx).