tests
test19BlockArguments

	self setUpParser: '[:a :abc | 1]' withMgencAndApply: #nestedBlock.
	self assertNoFail: result.
	self assert: result arguments size = 2.
	self assert: (result arguments includes: 'a').
	self assert: (result arguments includes: 'abc').