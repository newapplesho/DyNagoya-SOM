frame manipulation
popFrameAndPushResult: result 

	| poppedMethod |
	poppedMethod := self somFrame somMethod.
	self popFrame.
	self somFrame removeN: poppedMethod numberOfArguments.
	self somFrame push: result