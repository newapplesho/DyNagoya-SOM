tests
test07MetaClassHasInstanceFields

	| class field method pushFieldBc |
	self loadClazzes: {#Object. #Class}.
	class := universe loadAndStoreFromSource: 'ClassA = (---- | x | m = (x))'.
	self assert: class somClass somInstanceFields size equals: 1.
	method := class somClass somInstanceInvokables at: 1.
	pushFieldBc := method bytecodes first.
	self shouldnt: [field := class fieldAtIndex: pushFieldBc fieldIndex] raise: Error.
	self assert: universe globalNil equals: field.