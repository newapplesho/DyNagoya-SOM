tests
test04LookupOfFieldDefinedInSuperclass

	| source class method pushBc field |
	self loadClazzes: {#Object.}.
	source := 'ClassA = ( m=(class) )'.
	class := universe loadAndStoreFromSource: source.
	method := class somInstanceInvokables at: 1.
	pushBc := method bytecodes first.
	self shouldnt: [field := class allInstanceFields at: pushBc fieldIndex] raise: Error.
	self assert: field string equals: 'class'.