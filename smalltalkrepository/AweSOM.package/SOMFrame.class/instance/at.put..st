accessing
at: index put: object

	object = false ifTrue: [self halt].
	^ self indexableFields at: index put: object