initializing
initializeRealGlobals

	"self initializeGlobalsWithClassLoader: [:className | self loadSOMClass: className]."
	| preliminaryNil |
	self
		initNil;
		initClassSystem.
	
	preliminaryNil := self globalAt: #nil.
	self createGlobal: #nil somClass: #Nil.
	
	"This hack is necessary since the parsing can already create literals like numbers and others
	 which might have the nil object in object slots.
	 If we do not do the #becomeForward: these slotes refer to the old, useless object since it is not recognized as nil."
	preliminaryNil becomeForward: (self globalAt: #nil).	
	
	self
		createGlobal: #true somClass: #True;
		createGlobal: #false somClass: #False;
		initSystemClassesWith: [:className | self loadSystemClass: className];
		createGlobal: #system somClass: #System.