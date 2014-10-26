message dispatch
sendDoesNotUnderstand: signature
	| arguments receiver |
	"for debugging: in test suite DNU shouldn't be used"
	"self halt."
	
	"assemble and send DO NOT UNDERSTAND"
	arguments := SOMArray inUniverse: universe 
		withAll: (self somFrame popN: signature numArgs).
	"remove receiver from stack"
	receiver := self somFrame pop.
	
	"check if current frame is big enough for this unplanned Send"
	"doesNotUnderstand: needs 3 slots, one for this, one for method name, one for args"
	self somFrame remainingStackSize < 3
		ifTrue: [self somFrame resize: (self somFrame size + 3)].
		
	receiver 
		sendMessage: #doesNotUnderstand:arguments:
		withArguments: 
			(SOMArray inUniverse: universe withAll: 
				{universe newSymbol: signature. arguments})	