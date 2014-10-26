tests
test01ObjectCreation

	| clazz instance |
	self loadClazzes: {#Object}.
	clazz := universe loadSOMClass: #TestHarness.
	instance := clazz primnew.
	self assert: clazz equals: instance somClass