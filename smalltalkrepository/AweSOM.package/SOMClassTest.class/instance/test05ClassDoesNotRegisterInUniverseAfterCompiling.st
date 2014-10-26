tests
test05ClassDoesNotRegisterInUniverseAfterCompiling

	universe loadAndStoreFromSource: 'ClassA = ()'.
	self assert: (universe hasGlobalAt: #ClassA).