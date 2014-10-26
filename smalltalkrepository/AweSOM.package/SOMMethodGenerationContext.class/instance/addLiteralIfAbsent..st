accessing
addLiteralIfAbsent: literal

	| idx |
	idx := self literals indexOf: literal.
	idx isZero ifFalse: [^ idx].
	self literals add: literal.
	^ self literals size