tests
test13Block
	| testMethod |
	self loadClazzes: {  #Object. #Block  }.
	testMethod := self 
		assembleMethod: 'testMessage:p2:'
		withArguments: {  'a'. 'b'  }
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushArgumentIdx: 2
					ctxIdx: 1;
				bcReturnLocal	"pushes the second REAL param" ].
	testMethod numberOfArguments: 2.	"no self"
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushBlock: testMethod;
					bcPushConstant: #param1;
					bcPushConstant: #param2;
					bcSend: #value:with:;
					bcHalt ]).
	self 
		assert: #param2
		equals: interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error