primitives
primglobal: globalSymbol

	^ self universe
		globalAt: globalSymbol symbol
		ifAbsent: [self universe globalNil].