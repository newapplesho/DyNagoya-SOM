accessing
squeakClass
	"We currently look up the required squeak class at runtime. This could be optimized by
	storing it in an instance field. Implementing this has been deferred, as it is currently not possible to add instance fields to SOMObject subclasses that are not automatically mapped to SOM fields."
	^ Smalltalk 
		at: ('SOM' , self somName string) asSymbol
		ifAbsent: [ self somSuperClass squeakClass ]