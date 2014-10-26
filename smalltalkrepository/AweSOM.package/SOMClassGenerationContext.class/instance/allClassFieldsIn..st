variables
allClassFieldsIn: universe

	| superClass |
	self superName = 'nil' ifTrue: [^ self classFields].
	superClass := universe
		globalAt: self superName asSymbol
		ifAbsent: ["self error: 'Field lookup: Cannot find my superclass ' , self superName , '!'"
			"Transcript
				cr;
				show: 'Field lookup: Cannot find my superclass ' , self superName , '!'."
			^ self classFields].
	^ superClass somClass allInstanceFields , self classFields.