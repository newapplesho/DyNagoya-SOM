bytecode
emitSend: selector isSuper: isSuper

	isSuper
		ifTrue: [self bcSuperSend: selector]
		ifFalse: [self bcSend: selector]