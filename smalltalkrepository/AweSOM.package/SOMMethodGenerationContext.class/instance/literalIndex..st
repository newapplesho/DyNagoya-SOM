accessing
literalIndex: obj

	| idx |
	idx := self literals indexOf: obj.
	idx isZero ifTrue: [self error: 'Object not found in literal collection'].
	^ idx