accessing
valueInField: fieldName put: value

	self 
		fieldAtIndex: (self indexOfField: fieldName)
		put: value