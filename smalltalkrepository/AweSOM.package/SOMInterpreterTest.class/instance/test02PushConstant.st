tests
test02PushConstant
	self startInterpreterWith: 
		(self assembleMethod: 'test' withByteCodes: [:mgenc | 
			mgenc 
				bcPushConstant: (universe newNumber: 42); 
				bcHalt
		]).
	
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error