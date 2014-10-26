patterns
literalNumber
	| val lit |
	val := sym == #minus	ifTrue: [self negativeDecimal]
								ifFalse:[self literalDecimal ].
	lit := universe newNumber: val.
	mgenc addLiteralIfAbsent: lit.
	mgenc bcPushConstant: lit.