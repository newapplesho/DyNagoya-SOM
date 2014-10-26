lookup
lookupArgument

	| currentContext ctxIdx idx |
	currentContext := mgenc.
	ctxIdx := 0.
	idx := 0.
	[idx := currentContext arguments indexOf: varName.
	ctxIdx := ctxIdx + 1.
	currentContext := currentContext outer.
	] doWhileTrue: [idx isZero and: [currentContext notNil]].
	idx isZero ifTrue: [^ self].
	self
		isArgument: true;
		index: idx;
		contextIndex: ctxIdx.