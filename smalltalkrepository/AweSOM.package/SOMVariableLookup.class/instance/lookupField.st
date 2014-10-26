lookup
lookupField

	| fields cgenc |
	cgenc := mgenc somHolder.
	cgenc ifNil: [self error: 'mgenc has no holder!!!'].
	"(self varName = 'class' and: [self mgenc holder theName = #ClassA]) ifTrue: [self halt]."
	fields := cgenc isClassSide
		ifFalse: [cgenc allInstanceFieldsIn: self universe]
		ifTrue: [cgenc allClassFieldsIn: self universe].
	(fields includes: varName) ifTrue: [self isField: true]