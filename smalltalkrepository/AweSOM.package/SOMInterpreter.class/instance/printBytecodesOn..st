printing
printBytecodesOn: stream
	| currentFrame |
	
	currentFrame := frame.
	[currentFrame = universe globalNil] whileFalse: 
		[
			currentFrame printBytecodesOn: stream.
			currentFrame := currentFrame somPreviousFrame
		]