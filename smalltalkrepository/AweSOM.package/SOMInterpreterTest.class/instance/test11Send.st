tests
test11Send
	| testClazz testMethod testInstance |
	testClazz := universe classClass inUniverse: universe.
	testMethod := self 
		assembleMethod: 'testMessage:p2:'
		withArguments: {  'a'. 'b'  }
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushArgumentIdx: 2
					ctxIdx: 1;
				bcReturnLocal ].
	testClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  testMethod  }).
	testClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newSymbol: 'class')  }).
	testInstance := SOMObject 
		inUniverse: universe
		withSomClass: testClazz.
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushConstant: testInstance;
					bcPushConstant: #param1;
					bcPushConstant: #param2;
					bcSend: #testMessage:p2:;
					bcHalt ]).
	self 
		assert: #param1
		equals: interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error