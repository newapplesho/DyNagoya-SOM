tests
test14ReturnNonLocal

	| callerFrame calleeFrame method |
	method := self 
		assembleMethod: 'main'
		withByteCodes: [:mgenc | mgenc bcHalt].
	method maxStackDepth: 2.
	callerFrame := interpreter pushNewFrameWithMethod: method.
	callerFrame push: (universe newSymbol: #self).
	
	method := self compileMethod: 'subroutine = ([^42] value. ^24)'.
	calleeFrame := interpreter pushNewFrameWithMethod: method.
	calleeFrame somPreviousFrame: callerFrame.
	
	interpreter start.
	self 
		assert: 42
		equals: callerFrame pop number.
	self 
		should: [callerFrame pop]
		raise: Error