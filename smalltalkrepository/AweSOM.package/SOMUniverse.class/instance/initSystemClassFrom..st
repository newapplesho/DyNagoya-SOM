initializing
initSystemClassFrom: sqClass

	| superclass somClass |
	superclass := sqClass = SOMObject
		ifTrue: [self globalNil]
		ifFalse: [self globalAt: sqClass superclass somName].
	somClass := self classClass
		inUniverse: self
		withSomSuperClass: superclass.
	self
		globalAt: sqClass somName
		ifAbsentPut: [somClass].