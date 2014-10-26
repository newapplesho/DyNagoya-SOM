bytecode
bcPopLocalIndex: idx ctxIndex: ctxIdx

	self bytecode add: (SOMBCPopLocal in: self index: idx contextIndex: ctxIdx).