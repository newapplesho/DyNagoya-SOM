bytecode
bytecodeCount
	^ self bytecode 
		inject: 0
		into: [ :sum :ea | sum + ea length ]