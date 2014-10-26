as yet unclassified
test02BuildMethodWithConstants
	| mgenc method |
	mgenc := self createMgencFromSource: 'x: a = (a foo: 42)'.
	method := mgenc assembleIn: universe.
	"waiting for arvid's patch"
	"self assert: (method constantForBytecodeIndex: 1) symbol equals: #foo."