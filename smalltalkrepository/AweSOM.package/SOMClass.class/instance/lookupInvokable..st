as yet unclassified
lookupInvokable: signature
	
	^ self somInstanceInvokables elements 
		detect: [:invokable | invokable somSignature symbol == signature]
		ifNone: [self hasSuperClass
			ifTrue: [self somSuperClass lookupInvokable: signature]
			ifFalse: [nil]]