helper
startInterpreterWith: method withLocals: locals withArguments: args
	| frame |
	frame := interpreter pushNewFrameWithMethod: method.
	locals withIndexDo: [:each :index | 
		frame localAtIndex: index contextLevel: 1 put: each].
	args withIndexDo: [:each :index | 
		frame argumentAtIndex: index contextLevel: 1 put: each].
	interpreter start.