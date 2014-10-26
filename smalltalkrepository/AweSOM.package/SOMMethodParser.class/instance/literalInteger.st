patterns
literalInteger
	| val |
	val := text contents asInteger.
	self expect: #integer.
	^ val