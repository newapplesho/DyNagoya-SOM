tests
test04PushGlobal
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushGlobal: #nil;
					bcHalt
			]).
			
	self assert: universe globalNil = interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error