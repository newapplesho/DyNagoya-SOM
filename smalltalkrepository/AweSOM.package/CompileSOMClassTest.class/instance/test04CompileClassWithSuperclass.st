as yet unclassified
test04CompileClassWithSuperclass
	| cgenc clazz |
	cgenc := self createCgencFromSource: 'Bla = Array (method1 = (^ 42) method2 = primitive)'.
	clazz := cgenc assembleIn: universe.
	self 
		assert: clazz somSuperClass
		equals: (universe globalAt: #Array)
	"self assert: clazz superClazz theName symbol equals: #Array."