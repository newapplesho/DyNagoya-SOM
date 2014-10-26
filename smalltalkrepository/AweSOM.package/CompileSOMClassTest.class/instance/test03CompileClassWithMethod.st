as yet unclassified
test03CompileClassWithMethod
	| cgenc clazz |
	cgenc := self createCgencFromSource: 'Bla = Array (method1 = (^ 42) method2 = primitive ---- classMethod = ())'.
	clazz := cgenc assembleIn: universe.
	self 
		assert: clazz somInstanceInvokables size
		equals: 2.
	self assert: ((clazz somInstanceInvokables at: 1) isKindOf: SOMMethod).
	self assert: ((clazz somInstanceInvokables at: 2) isKindOf: SOMPrimitive).
	self 
		assert: clazz somClass somInstanceInvokables size
		equals: 1