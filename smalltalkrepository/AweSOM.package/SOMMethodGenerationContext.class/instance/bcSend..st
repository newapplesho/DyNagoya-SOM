bytecode
bcSend: selector

	self addLiteralIfAbsent: selector asSymbol.
	^ self bytecode add: (SOMBCSend in: self index: (self literalIndex: selector)).