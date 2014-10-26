bytecode
bcPushField: fieldName

	| idx |
	idx := self addLiteralIfAbsent: fieldName.
	^ self bytecode add: (SOMBCPushField in: self index: idx).