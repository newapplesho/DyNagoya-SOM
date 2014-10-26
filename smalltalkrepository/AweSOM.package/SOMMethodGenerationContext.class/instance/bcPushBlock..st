bytecode
bcPushBlock: method
	
	| idx |
	idx := self addLiteralIfAbsent: method.
	^ self bytecode add: (SOMBCPushBlock in: self index: idx).