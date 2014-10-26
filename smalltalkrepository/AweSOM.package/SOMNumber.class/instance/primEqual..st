primitives
primEqual: other

	^ universe newBool: 
		((other isKindOf: SOMNumber)
			and: [self number = other number])