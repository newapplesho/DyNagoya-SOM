tests
test05PrimitiveComparison

	| symbol1 symbol2 string1 |
	symbol1 := universe newSymbol: 'banana'.
	symbol2 := universe newSymbol: 'banana'.
	string1 := universe newString: 'banana'.
	self assert: (symbol1 primEqualEqual: symbol2) equals: (universe newBool: true).
	
	self assert: (symbol1 primEqual: string1) equals: (universe newBool: true).