tests
test03NilClass
	| nilObject nilClass object |
	nilObject := universe globalAt: #nil.
	nilClass := universe globalAt: #Nil.
	object := universe globalAt: #Object.
	self 
		assert: nilObject somClass
		equals: nilClass.
	self 
		assert: nilObject somClass somSuperClass
		equals: object