bytecode
bcSuperSend: selector

	self addLiteralIfAbsent: selector asSymbol.
	^ self bytecode add: (SOMBCSuperSend in: self index: (self literalIndex: selector)).