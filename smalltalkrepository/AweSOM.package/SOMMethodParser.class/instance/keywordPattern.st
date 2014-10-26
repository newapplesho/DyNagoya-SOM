selector patterns
keywordPattern
	| kw |
	kw := RWBinaryOrTextStream on: String new.
	[ kw nextPutAll: self keyword.
	  mgenc addArgumentIfAbsent: self argument
	] doWhileTrue: [sym == #keyword].

	mgenc signature: kw contents asSymbol. "(universe newSymbol:)"