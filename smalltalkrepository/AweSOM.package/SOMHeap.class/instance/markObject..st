garbage collection
markObject: somObject

	somObject isSOMObject ifFalse: [^ self].
	somObject gcField ifNil: [^ self].
	somObject gcField ifTrue: [^ self].
	somObject gcField: true.
	somObject allMyReferences do: [:ea | self markObject: ea].