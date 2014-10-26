accessing
createEvalutationMethodWithParameters: numParams 
	^ (SOMBlockEvaluation inUniverse: self universe)
		somSignature: (universe newSymbol: (self evaluationMethodWithParameters: numParams));
		numberOfArguments: numParams;
		yourself