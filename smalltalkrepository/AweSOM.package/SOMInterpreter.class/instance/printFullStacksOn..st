printing
printFullStacksOn: stream
	| currentFrame |
	
	currentFrame := stoppedFrame ifNotNil: [stoppedFrame] ifNil: [frame].
	[currentFrame = universe globalNil] 
		whileFalse: [
			currentFrame printStackOn: stream.
			currentFrame := currentFrame somPreviousFrame
		]