patterns
methodBody
	sym == #primitive
		ifTrue:  [ mgenc isPrimitive: true.
					 self primitiveBlock.]
		ifFalse: [ self methodBlock ].
