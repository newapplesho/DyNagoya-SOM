tests
test16PushField
	| testClazz testMethod testInstance testFieldName |
	testFieldName := universe newSymbol: 'testField'.
	testClazz := universe classClass inUniverse: universe.
	testMethod := self 
		assembleMethod: 'testMessage'
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushField: testFieldName string;
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
	testInstance 
		valueInField: testFieldName
		put: (universe newNumber: 42).
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
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error