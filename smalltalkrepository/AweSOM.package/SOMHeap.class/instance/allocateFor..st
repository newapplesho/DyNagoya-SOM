allocating
allocateFor: object

	(object isSOMNumber or: [object isSOMSymbol]) ifTrue: [^ self].
	object gcField: false.
	self basicAllocateFor: object.
	self objects size > self maxSize ifTrue: [
		self collectGarbage].