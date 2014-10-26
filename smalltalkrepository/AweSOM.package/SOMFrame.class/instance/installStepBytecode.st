debugging
installStepBytecode

	"find next bytecode or look in caller frame"
	bytecodeIndex > self somMethod bytecodes size
		ifTrue: [
			self somPreviousFrame ~= universe globalNil
				ifTrue: [self somPreviousFrame installStepBytecode].			
			^ self ].
		
	self installStepBytecodeAt: bytecodeIndex