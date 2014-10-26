patterns
unaryMessage: superSend
	| sel |
	sel := self unarySelector.
	
	mgenc emitSend: sel isSuper: superSend 