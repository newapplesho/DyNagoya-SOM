adding
addField: field
	self isClassSide
		ifTrue:  [classFields add: field]
		ifFalse: [instanceFields add: field].