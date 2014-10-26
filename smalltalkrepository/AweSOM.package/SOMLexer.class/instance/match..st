lexing
match: aSymbol
	sym := aSymbol.
	symChr := self currentChar.
	text := RWBinaryOrTextStream with: symChr asString.
	self readNext.
	^ sym.