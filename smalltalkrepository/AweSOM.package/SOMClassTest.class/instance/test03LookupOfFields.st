tests
test03LookupOfFields

	| source class method pushBc field |
	self loadClazzes: {#Object.}.
	source := 'ClassA = ( | x | m=(x) )'.
	class := universe loadAndStoreFromSource: source.
	method := class somInstanceInvokables at: 1.
	pushBc := method bytecodes first.
	self shouldnt: [field := class allInstanceFields at: pushBc fieldIndex] raise: Error.
	self assert: field string equals: 'x'.