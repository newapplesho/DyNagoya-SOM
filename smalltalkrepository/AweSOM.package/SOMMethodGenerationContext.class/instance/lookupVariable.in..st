variables
lookupVariable: varName in: universe

	| lookup |
	lookup := SOMVariableLookup
		lookupVar: (varName = 'super' ifTrue: ['self'] ifFalse: varName)
		inMethodContext: self
		inUniverse: universe.
	lookup found ifFalse: [Transcript cr; show: 'Cannot lookup var'. ^ self].
	lookup isArgument ifTrue: [
		self bcPushArgumentIdx: lookup index ctxIdx: lookup contextIndex.
		^self].
	lookup isLocal ifTrue: [
		self bcPushLocalIndex: lookup index ctxIndex: lookup contextIndex.
		^self].
	lookup isField ifTrue: [
		self bcPushField: varName.
		^self].
	self bcPushGlobal: varName.
	