comparing
= other
	^ (other isKindOf: SOMString) and: [
		self string = other string]