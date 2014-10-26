as yet unclassified
test06AssembleNormalClass

	| class |
	class := self compileSource: 'Test = (| a b| m1=(1+2))'.
	self assert: class somInstanceFields elements second string equals: 'b'.
	self assert: class somInstanceInvokables size equals: 1.