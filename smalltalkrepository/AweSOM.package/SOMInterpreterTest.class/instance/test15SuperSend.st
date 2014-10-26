tests
test15SuperSend
	| testClazz testMethod superClazz superMethod testInstance |
	superClazz := universe classClass inUniverse: universe.
	superMethod := self 
		assembleMethod: 'test'
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushConstant: (universe newNumber: 42);
				bcReturnLocal ].
	superMethod somHolder: superClazz.
	superClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  superMethod  }).
	superClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newSymbol: 'class')  }).
	testClazz := universe classClass 
		inUniverse: universe
		withSomSuperClass: superClazz.
	testMethod := self 
		assembleMethod: 'test'
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushArgumentIdx: 1
					ctxIdx: 1;
				bcSuperSend: 'test';
				bcReturnLocal ].
	testMethod somHolder: testClazz.
	testClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  testMethod  }).
	testClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newString: 'class')  }).
	testInstance := SOMObject 
		inUniverse: universe
		withSomClass: testClazz.
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushConstant: testInstance;
					bcSend: #test;
					bcHalt ]).
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error