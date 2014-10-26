instance creation
inUniverse: universe named: squeakSymbol numArgs: numArgs 
	| instance |
	instance := self inUniverse: universe.
	squeakSymbol ifNotNil: [ instance somSignature: (universe newSymbol: squeakSymbol) ].
	instance numberOfArguments: numArgs.
	^ instance