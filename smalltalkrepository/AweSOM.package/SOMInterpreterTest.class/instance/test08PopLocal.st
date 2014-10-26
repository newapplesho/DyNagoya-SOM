tests
test08PopLocal
	"Pushes constant 42 to stack and pops it into local variable"
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withLocals: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42);
					bcPopLocalIndex: 2 ctxIndex: 1;
					bcHalt
			])
		withLocals: {universe newNumber: 41. nil}.
		
	self assert: 42 equals: (interpreter somFrame localAtIndex: 2 contextLevel: 1) number.
	self should: [interpreter somFrame pop] raise: Error