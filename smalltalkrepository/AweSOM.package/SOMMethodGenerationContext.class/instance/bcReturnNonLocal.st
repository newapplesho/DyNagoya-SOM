bytecode
bcReturnNonLocal

	^ self bytecode add: (SOMBCReturnNonLocal in: self).