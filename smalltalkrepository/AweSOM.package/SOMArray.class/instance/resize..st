resizing
resize: newSize
	newSize < self size
		ifTrue: [self indexableFields: (self indexableFields copyFrom: 1 to: newSize)]
		ifFalse: [self indexableFields: (self indexableFields, (Array new: newSize - self size))]