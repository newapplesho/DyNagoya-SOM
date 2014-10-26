initializing
initialize

	super initialize.
	self interpreter: (self class defaultInterpreter inUniverse: self).
	globals := Dictionary new.
	heap := SOMHeap in: self.
	symbolTable := SOMSymbolTable in: self.
	numberCache := IdentityDictionary new.