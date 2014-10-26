initializing
initializeFakeGlobals

	| nilClass |
	self
		initNil;
		initClassSystem;
		initSystemClassesWith: [:className | "do nothing"].
	"prepare for tests"
	nilClass := self classClass 
		inUniverse: self
		withSomSuperClass: (self globalAt: #Object).
	(self globalAt: #nil) somClass: nilClass.
	self globalAt: #Nil put: nilClass.
	self globalAt: #system put: (SOMSystem inUniverse: self).
	self globalAt: #System put: (self classClass inUniverse: self).
	self globalAt: #true put: (SOMObject inUniverse: self).
	self globalAt: #false put: (self classClass inUniverse: self).