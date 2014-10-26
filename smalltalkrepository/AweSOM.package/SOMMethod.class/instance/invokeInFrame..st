invoking
invokeInFrame: frame

	| newFrame |
	newFrame := self universe interpreter pushNewFrameWithMethod: self.
	newFrame copyArgumentsFrom: frame.
	^ newFrame