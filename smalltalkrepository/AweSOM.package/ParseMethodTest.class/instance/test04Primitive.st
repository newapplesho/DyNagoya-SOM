tests
test04Primitive

	| res |
	self setUpParser: '"Accessing" at: index = primitive'.
	self assertNoFail: (res := parser apply: #method).
	self assert: res isPrimitive.