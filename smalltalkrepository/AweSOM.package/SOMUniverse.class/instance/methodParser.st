universe configuration
methodParser
	^ ((Smalltalk hasClassNamed: #SOMMethodParser2) and: UseOMeta)
		ifTrue: [ Smalltalk at: #SOMMethodParser2 ]
		ifFalse:[ SOMMethodParser ]