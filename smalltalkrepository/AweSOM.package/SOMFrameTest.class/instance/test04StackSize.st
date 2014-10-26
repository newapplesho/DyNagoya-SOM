tests
test04StackSize
	self assert: 10 equals: frame remainingStackSize.
	
	9 to: 0 by: -1 do: [ :expectedRemainingSize |
		frame push: 'A'.
		self assert: expectedRemainingSize equals: frame remainingStackSize.
	].