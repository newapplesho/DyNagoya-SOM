tests
test17PopField
	| testClazz testMethod testInstance testFieldName |
	testFieldName := universe newSymbol: 'testField'.
	testClazz := universe classClass inUniverse: universe.
	testMethod := self 
		assembleMethod: 'testMessage'
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushConstant: (universe newNumber: 42);
				bcPopField: testFieldName string;
				bcPushArgumentIdx: 1
					ctxIdx: 1;
				bcReturnLocal ].
	testClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  testMethod  }).
	testClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newString: 'class'). testFieldName  }).
	testInstance := SOMObject 
		inUniverse: universe
		withSomClass: testClazz.
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushConstant: testInstance;
					bcSend: #testMessage;
					bcHalt ]).
	self 
		assert: 42
		equals: (testInstance valueInField: testFieldName) number.
	self 
		assert: testInstance
		equals: interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error