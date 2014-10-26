invoking
invokeInFrame: frame

	| block newFrame |
	block := frame stackElementAtIndex: self numberOfArguments + 1.
	newFrame := self universe interpreter
		pushNewFrameWithMethod: block somBlockMethod.
	newFrame somContext: block somContext.
	newFrame copyArgumentsFrom: frame.
	frame pop. "pops self -> block"
	^ newFrame