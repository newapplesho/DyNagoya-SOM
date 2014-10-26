as yet unclassified
invokeInFrame: frame

	| theSelf arguments result |	
	"without self, self is first argument"
	arguments := frame popN: (self numberOfArguments - 1).
	theSelf := frame pop.
	result := theSelf
		performPrimitive: self realSignature symbol
		withArguments: arguments.

	result isSOMObject
		ifTrue: [	frame push: result. ].
	