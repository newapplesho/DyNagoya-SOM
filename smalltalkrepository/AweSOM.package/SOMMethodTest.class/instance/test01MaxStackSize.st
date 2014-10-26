tests
test01MaxStackSize

	self createMethod: 'x = ()'.
	self assert: method maxStackDepth equals: 1.
	self createMethod: 'x = (1. 2. ''abc''. #def)'.
	self assert: method maxStackDepth equals: 1.