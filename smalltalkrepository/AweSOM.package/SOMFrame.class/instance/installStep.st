debugging
installStep

	| stepBytecodeIndex |
	"find next send or popLocal"
	stepBytecodeIndex := (bytecodeIndex to: self somMethod bytecodes size)
		detect: [:index |
			{SOMBCSend. SOMBCSuperSend. SOMBCPopLocal. SOMBCReturnLocal. SOMBCReturnNonLocal} 
				anySatisfy: [:bytecodeClass | 
					(self somMethod bytecodeAt: index) isKindOf: bytecodeClass]]
		ifNone: [
			self somPreviousFrame ~= universe globalNil
				ifTrue: [self somPreviousFrame installStep].			
			^ self ].
		
	self installStepBytecodeAt: stepBytecodeIndex.