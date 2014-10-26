instance creation
inUniverse: universe withSomSuperClass: superClazz

	| metaclass superMeta |
	"metaclass"
	superMeta := superClazz isClass
		ifTrue: [superClazz somClass]
		ifFalse: [universe globalAt: #Class].
	metaclass := (self inUniverse: universe)
		somClass: (universe globalAt: #Metaclass);
		somSuperClass: superMeta;
		yourself.
	"class"
	^ (self inUniverse: universe)
		somSuperClass: superClazz;
		somClass: metaclass;
		yourself.