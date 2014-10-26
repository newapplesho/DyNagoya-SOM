primitives
primEqualEqual: other
	other isSOMSymbol ifFalse: [^ false].
	
	^ self universe newBool: 
	  (self symbol = other symbol
	    ifTrue: [true]
	    ifFalse: [false])