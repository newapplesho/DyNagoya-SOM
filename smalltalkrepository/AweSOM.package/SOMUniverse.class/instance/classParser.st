universe configuration
classParser
	^ ((Smalltalk hasClassNamed: #SOMClassParser2) and: UseOMeta)
		ifTrue: [ Smalltalk at: #SOMClassParser2 ]
		ifFalse:[ SOMClassParser ]