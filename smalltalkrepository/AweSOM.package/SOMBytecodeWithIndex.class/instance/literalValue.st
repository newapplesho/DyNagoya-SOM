accessing
literalValue
	self mgenc ifNil: [^ nil].
	^ self mgenc literals at: self index