assembling
assembleIn: universe

	^ self isPrimitive
		ifTrue: [universe primitiveClass
			inUniverse: universe
			named: self signature
			numArgs: arguments size]
		ifFalse: [ (universe methodClass
			inUniverse: universe
			named: self signature
			numArgs: self arguments size
			numLocals: self locals size
			maxStackDepth: self computeMaxStackDepth
			bytecodes: bytecode asArray
			holder: universe globalNil
			lexicalContext: universe globalNil)
				assignLexicalContexts ].