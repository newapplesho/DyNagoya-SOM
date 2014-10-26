tests
test03MaxStackSize

	self createMethod: 'x: a = ( self a: 3 b: a)'.
	self assert: method maxStackDepth equals: 3.