as yet unclassified
somSymbolFor: squeakSymbol

	^ self
		at: squeakSymbol 
		ifAbsentPut: [SOMSymbol
			inUniverse: self universe
			string: squeakSymbol].