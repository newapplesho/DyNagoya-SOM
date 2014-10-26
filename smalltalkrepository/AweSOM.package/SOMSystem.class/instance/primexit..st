primitives
primexit: errorCode
	
	errorCode number ~= SOMSystem successCode ifTrue: [
		self universe interpreter printStack].
	self universe quit: errorCode.