constant
instructionSelectorDict

	^ InstructionSelectorDict ifNil: [
		InstructionSelectorDict := Dictionary new
			at: SOMBCReturnNonLocal put: #doReturnNonLocal;
			at: SOMBCDup put: #doDup;
			at: SOMBCPop put: #doPop;
			at: SOMBCHalt put: #doHalt;
			at: SOMBCPushField put: #doPushField;
			at: SOMBCPopLocal put: #doPopLocal;
			at: SOMBCSuperSend put: #doSuperSend;
			at: SOMBCPushArgument put: #doPushArgument;
			at: SOMBCPushGlobal put: #doPushGlobal;
			at: SOMBCSend put: #doSend;
			at: SOMBCStep put: #doStep;
			at: SOMBCPushBlock put: #doPushBlock;
			at: SOMBCPopArgument put: #doPopArgument;
			at: SOMBCReturnLocal put: #doReturnLocal;
			at: SOMBCPushConstant put: #doPushConstant;
			at: SOMBCPushLocal put: #doPushLocal;
			at: SOMBCPopField put: #doPopField;
			yourself]