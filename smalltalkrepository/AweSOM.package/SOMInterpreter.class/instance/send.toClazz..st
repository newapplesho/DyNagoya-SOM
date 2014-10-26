message dispatch
send: signature toClazz: clazz
	"sends the method to the given class or invokes do not understand"
	(clazz lookupInvokable: signature) 
		ifNotNilDo: [:invokable | invokable invokeInFrame: self somFrame]
		ifNil: [self sendDoesNotUnderstand: signature]