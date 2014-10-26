lexing
matchOperator
	| cur |
	(self isOperator: (self bufchar: bufP + 1)) ifTrue: [
		sym := #operatorSequence.
		symChr := nil.
		text := RWBinaryOrTextStream on: String new.
		
		[self isOperator: self currentChar] whileTrue: [
			text nextPut: self currentChar.
			self readNext.
		].
		^ sym.
	].

	cur := self currentChar.
	cur == $~ ifTrue: [ ^ self match: #not ].
	cur == $& ifTrue: [ ^ self match: #and ].
	cur == $| ifTrue: [ ^ self match: #or  ].
	cur == $* ifTrue: [ ^ self match: #star].
	cur == $/ ifTrue: [ ^ self match: #div ].
	cur == $\ ifTrue: [ ^ self match: #mod ].
	cur == $+ ifTrue: [ ^ self match: #plus].
	cur == $= ifTrue: [ ^ self match: #equal].
	cur == $> ifTrue: [ ^ self match: #more].
	cur == $< ifTrue: [ ^ self match: #less].
	cur == $, ifTrue: [ ^ self match: #comma].
	cur == $@ ifTrue: [ ^ self match: #at  ].
	cur == $% ifTrue: [ ^ self match: #per ].
	
	Error signal: 'STEFAN: this is unexpected, I think...'.