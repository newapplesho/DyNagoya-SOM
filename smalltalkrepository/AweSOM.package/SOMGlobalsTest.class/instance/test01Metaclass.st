tests
test01Metaclass
	| clazz metaclazz object nilObject |
	metaclazz := universe globalAt: #Metaclass.
	clazz := universe globalAt: #Class.
	object := universe globalAt: #Object.
	nilObject := universe globalAt: #nil.
	self 
		assert: metaclazz somClass somClass
		equals: metaclazz.
	self 
		assert: object somSuperClass
		equals: nilObject.
	self 
		assert: object somClass somSuperClass
		equals: clazz.
	self 
		assert: object somClass somClass
		equals: metaclazz