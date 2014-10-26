tests
test03Dup
	"Duplicates the constant 42 on the stack and checks if there are exactly
	2 matching items on the stack"
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42); 
					bcDup;
					bcHalt
			]).
	
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error