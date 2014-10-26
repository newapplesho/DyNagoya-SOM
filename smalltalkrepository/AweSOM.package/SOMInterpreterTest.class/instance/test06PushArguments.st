tests
test06PushArguments
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withArguments: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushArgumentIdx: 2 ctxIdx: 1;
					bcHalt
			])
		withArguments: {universe newNumber: 41. universe newNumber: 42}.
	
	self assert: 42 equals: interpreter somFrame pop number.
	self should: [interpreter somFrame pop] raise: Error