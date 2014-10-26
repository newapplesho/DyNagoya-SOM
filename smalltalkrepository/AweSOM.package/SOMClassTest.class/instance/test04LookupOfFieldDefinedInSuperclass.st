tests
test04LookupOfFieldDefinedInSuperclass

	| sourceSuper sourceSub
	  class method pushBc field |
	self loadClazzes: {#Object.}.
	sourceSuper := 'ClassA = ( | aField | )'.
	sourceSub   := 'ClassB = ClassA ( m=(aField) )'.
	
	universe loadAndStoreFromSource: sourceSuper.
	class := universe loadAndStoreFromSource: sourceSub.
	
	method := class somInstanceInvokables at: 1.
	pushBc := method bytecodes first.
	self shouldnt: [field := class allInstanceFields at: pushBc fieldIndex] raise: Error.
	self assert: field string equals: 'aField'.
