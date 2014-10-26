as yet unclassified
resetStackPointer
	self localOffset: 
		(self somMethod numberOfArguments).
	self stackPointer: 
		(self somMethod numberOfLocals + self somMethod numberOfArguments) 