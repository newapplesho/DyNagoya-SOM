frame manipulation
popFrame
	| currentFrame |
	currentFrame := self somFrame.
	self somFrame: currentFrame somPreviousFrame.
	^ currentFrame
		clearPreviousFrame;
		yourself