variables
lookUpAndPop: varName in: universe

	| lookup |
	lookup := SOMVariableLookup
		lookupVar: (varName = 'super' ifTrue: ['self'] ifFalse: varName)
		inMethodContext: self
		inUniverse: universe.
	lookup found ifFalse: [self error: 'Cannot lookup var ' , varName , ' for pop'].
	lookup isArgument ifTrue: [
		self bcPopArgumentIndex: lookup index ctxIndex: lookup contextIndex.
		^self].
	lookup isLocal ifTrue: [
		self bcPopLocalIndex: lookup index ctxIndex: lookup contextIndex.
		^self].
	lookup isField ifTrue: [
		self bcPopField: varName.
		^self].
	self halt. "trying to store in global"