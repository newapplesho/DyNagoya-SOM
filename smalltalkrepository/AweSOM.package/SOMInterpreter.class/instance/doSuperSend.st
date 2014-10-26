bytecode processing
doSuperSend
	| methodName superClazz |
	methodName := self currentBytecode selector.
	superClazz := self somFrame outerContext somMethod somHolder somSuperClass.
	self 
		send: methodName
		toClazz: superClazz