tests
test02Subclass
	| object array |
	object := universe globalAt: #Object.
	array := universe globalAt: #Array.
	self 
		assert: array somSuperClass
		equals: object.
	self 
		assert: array somClass somSuperClass
		equals: object somClass