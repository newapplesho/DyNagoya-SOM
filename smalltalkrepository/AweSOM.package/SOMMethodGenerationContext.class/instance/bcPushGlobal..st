bytecode
bcPushGlobal: global

	self addLiteralIfAbsent: global.
	^ self bytecode add: (SOMBCPushGlobal in: self index: (self literalIndex: global)).