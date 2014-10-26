bytecode
bcPopField: fieldName

	| idx |
	idx := self addLiteralIfAbsent: fieldName.
	^ self bytecode add: (SOMBCPopField in: self index: idx)