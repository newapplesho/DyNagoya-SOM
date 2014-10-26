as yet unclassified
inferFieldIndexFrom: object

	| fieldName |
	fieldName := object universe newSymbol: self literalValue.
	self fieldIndex: (object indexOfInstanceField: fieldName).