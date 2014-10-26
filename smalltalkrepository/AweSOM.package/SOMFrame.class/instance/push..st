stack manipulation
push: object

	self stackPointer: self stackPointer + 1.
	self at: self stackPointer put: object.