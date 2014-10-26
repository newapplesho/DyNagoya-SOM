lexing
peek
	| oldSym oldSymChr oldText |
	peekDone
		ifTrue: [ Error signal: 'SOM Lexer: cannot peek twice!' ].
	
	oldSym    := sym.
	oldSymChr := symChr.
	oldText   := RWBinaryOrTextStream with: text contents.
	
	nextSym   := self symbol.
	nextSymChr:= symChr.
	nextText  := text.
	
	sym   := oldSym.
	symChr:= oldSymChr.
	text  := oldText.
	
	peekDone := true.
	
	^ nextSym.