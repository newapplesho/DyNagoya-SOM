tests
test02MaxStackSize

	self createMethod: 'x = (1+2)'.
	self assert: method maxStackDepth equals: 2.