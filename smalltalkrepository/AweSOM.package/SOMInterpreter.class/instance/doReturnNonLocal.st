bytecode processing
doReturnNonLocal
	"pops the topmost element of the stack and treats it as the return value"
	| result context |
	result := self somFrame pop.
	context := self somFrame outerContext.
	
	self flag: #arv.
	"implement escaped block case"
	
	[self somFrame ~= context] whileTrue: [self popFrame].
	self popFrameAndPushResult: result