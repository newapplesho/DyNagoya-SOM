frame manipulation
pushNewFrameWithMethod: method 

	"creates a new frame encapsulating the given method
	and sets the needed length of its stack"
	| frameLength |
	frameLength := method numberOfArguments
		+ method numberOfLocals
		+ method maxStackDepth.
	^ frame := (universe frameClass 
		inUniverse: self universe
		size: frameLength)
		somMethod: method;
		somPreviousFrame: (frame ifNil: [universe globalNil]);
		resetStackPointer;
		bytecodeIndex: 1;
		yourself