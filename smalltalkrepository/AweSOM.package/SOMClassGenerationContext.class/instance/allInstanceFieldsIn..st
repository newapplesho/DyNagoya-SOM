variables
allInstanceFieldsIn: universe

	| superClass |
	self superName = 'nil' ifTrue: [^ self instanceFields].
	superClass := universe
		globalAt: self superName asSymbol
		ifAbsent: ["self error: 'Field lookup: Cannot find my superclass ' , self superName , '!'"
			"Transcript
				cr;
				show: 'Field lookup: Cannot find my superclass ' , self superName , '!'."
			^ self instanceFields].
	^ superClass allInstanceFields , self instanceFields.