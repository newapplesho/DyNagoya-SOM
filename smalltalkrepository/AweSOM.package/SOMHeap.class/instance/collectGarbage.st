garbage collection
collectGarbage

	self
		mark;
		sweep.
	self objects size > self maxSize ifTrue: [
		self error: 'Couldn''t free enough space from heap'].