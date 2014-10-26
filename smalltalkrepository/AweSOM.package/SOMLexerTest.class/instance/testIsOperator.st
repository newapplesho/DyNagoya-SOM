tests
testIsOperator
	| lexer |
	lexer := SOMLexer new.

	'~&|*/\+=><,@%' asCharacterSet do: [:c |
		self assert: (lexer isOperator: c).
	]
	