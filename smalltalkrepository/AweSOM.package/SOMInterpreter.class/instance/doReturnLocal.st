bytecode processing
doReturnLocal
	"pops the topmost element of the stack and treats it as the return value"
	self popFrameAndPushResult: self somFrame pop