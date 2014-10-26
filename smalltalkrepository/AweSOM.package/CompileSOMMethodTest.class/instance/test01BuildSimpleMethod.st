as yet unclassified
test01BuildSimpleMethod
	| mgenc method |
	mgenc := universe methodGenClass named: 'a:b:c:'.
	method := mgenc assembleIn: universe.
	self 
		assert: method somSignature symbol
		equals: #a:b:c: