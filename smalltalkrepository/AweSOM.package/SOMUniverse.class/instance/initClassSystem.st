initializing
initClassSystem

	| class metaclass |
	class     := self classClass inUniverse: self.
	metaclass := self classClass inUniverse: self.
	class somClass: metaclass.
	metaclass somClass: class.
	metaclass somSuperClass: class.
	self globalAt: #Class put: class.
	self globalAt: #Metaclass put: metaclass.