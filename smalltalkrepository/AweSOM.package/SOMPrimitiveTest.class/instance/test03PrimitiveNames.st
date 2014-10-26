tests
test03PrimitiveNames
	| primitive |
	primitive := SOMPrimitive inUniverse: universe.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: '-').
	self 
		assert: primitive realSignature string
		equals: #primMinus:.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: '//').
	self 
		assert: primitive realSignature string
		equals: #primSlashSlash:.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: 'key:word:').
	self 
		assert: primitive realSignature string
		equals: #primkey:word:.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: 'unary').
	self 
		assert: primitive realSignature string
		equals: #primunary