as yet unclassified
somCurrentObject
	self somMethod somSignature = self universe globalNil
		ifTrue: [^ self universe globalNil].
	self somMethod numberOfArguments = 0
		ifTrue: [^ self universe globalNil].
	^ self argumentAtIndex: 1 contextLevel: 1