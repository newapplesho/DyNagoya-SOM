tests
test09PopArgument
	"Pushes constant 42 to stack and pops it into argument"
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withArguments: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42);
					bcPopArgumentIndex: 2 ctxIdx: 1;
					bcHalt
			])
		withArguments: {universe newNumber: 41. nil}.
	
	self assert: 42 equals: (interpreter somFrame argumentAtIndex: 2 contextLevel: 1) number.
	self should: [interpreter somFrame pop] raise: Error