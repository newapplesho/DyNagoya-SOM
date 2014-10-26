patterns
identifier
	| s | 
	s := text asSymbol.
	
	(self accept: #primitive) ifFalse: [
		self expect: #identifier]. 
	
	^ s