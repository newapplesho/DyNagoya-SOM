bytecode processing
doSend

	| methodName receiver |
	methodName := self currentBytecode selector.
	receiver := self somFrame stackElementAtIndex: methodName numArgs + 1.
	^ self 
		send: methodName
		toClazz: receiver somClass