tests
test12DNU
	| testClazz testMethod testInstance params result |
	self loadClazzes: {  #Array. #Object  }.
	testClazz := universe classClass inUniverse: universe.
	params := SOMArray 
		inUniverse: universe
		size: 5.
	testMethod := self 
		assembleMethod: 'doesNotUnderstand:arguments:'
		withArguments: {  'message'. 'arguments'  }
		withByteCodes: 
			[ :mgenc | 
			1 
				to: 3
				do: 
					[ :paramIndex | 
					mgenc
						bcPushConstant: params;
						bcPushConstant: (universe newNumber: paramIndex);
						bcPushArgumentIdx: paramIndex
							ctxIdx: 1;
						bcSend: #at:put: ].
			mgenc bcReturnLocal ].
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
					bcPushConstant: #param3;
					bcSend: #unknownMethod:p2:p3:;
					bcHalt ]).
	result := interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error.
	self 
		assert: testInstance
		equals: (params at: 1).
	self 
		assert: #unknownMethod:p2:p3:
		equals: (params at: 2) symbol.
	self 
		assert: {  #param1. #param2. #param3  }
		equals: (params at: 3) elements