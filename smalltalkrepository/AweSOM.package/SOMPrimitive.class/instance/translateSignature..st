as yet unclassified
translateSignature: sqSignature

	"#abc: --> #primabc: #~~ --> #primTildeTilde"
	| transformedSignature isBinary part |
	isBinary := true.
	transformedSignature := sqSignature
		inject: ''
		into: [:acc :each |
			part := self class selectorMapping
				at: each
				ifAbsent: [isBinary := false. each asString].
			acc , part].
	isBinary ifTrue: [transformedSignature := transformedSignature , ':'].
	^ SOMSymbol
		inUniverse: universe
		string: 'prim' , transformedSignature.