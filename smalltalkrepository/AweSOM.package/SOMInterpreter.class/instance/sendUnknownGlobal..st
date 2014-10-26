as yet unclassified
sendUnknownGlobal: globalName 

	"check if current frame is big enough for this unplanned Send"
	"unknownGlobal: needs 2 slots, one for this and one for globalName"
	self somFrame remainingStackSize < 2
		ifTrue: [self somFrame resize: (self somFrame size + 2)].
		
	self somCurrentObject 
		sendMessage: #unknownGlobal:
		withArguments: 
			(SOMArray inUniverse: universe withAll: 
				{universe newSymbol: globalName})