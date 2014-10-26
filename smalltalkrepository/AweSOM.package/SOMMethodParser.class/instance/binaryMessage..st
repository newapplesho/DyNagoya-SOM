patterns
binaryMessage: superSend
	| sel |
	sel := self binarySelector.
	
	mgenc addLiteralIfAbsent: sel.
	
	self binaryOperand: false.
	
	superSend ifTrue: [mgenc bcSuperSend: sel]
				ifFalse:[mgenc bcSend: sel].