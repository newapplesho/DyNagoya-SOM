tests
test05PushLocal
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withLocals: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushLocalIndex: 2 ctxIndex: 1;
					bcHalt
			])
		withLocals: {universe newNumber: 41. universe newNumber: 42}.
	
	self assert: 42 equals: interpreter somFrame pop number.
	self should: [interpreter somFrame pop] raise: Error