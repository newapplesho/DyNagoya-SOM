lookup
lookupLocal

	| currentContext ctxIdx idx |
	currentContext := mgenc.
	ctxIdx := 0.
	idx := 0.
	[idx := currentContext locals indexOf: varName.
	ctxIdx := ctxIdx + 1.
	currentContext := currentContext outer.
	] doWhileTrue: [idx isZero and: [currentContext notNil]].
	idx isZero ifTrue: [^ self].
	self
		isLocal: true;
		index: idx;
		contextIndex: ctxIdx.