patterns
keywordMessage: superSend
	| kw sel |
	kw := RWBinaryOrTextStream on: String new.
	
	[ kw nextPutAll: self keyword.
	  self formula.
	] doWhileTrue: [sym == #keyword].

	sel := kw contents asSymbol.
	
	mgenc addLiteralIfAbsent: sel.
	superSend ifTrue:  [mgenc bcSuperSend: sel]
				ifFalse: [mgenc bcSend: sel]