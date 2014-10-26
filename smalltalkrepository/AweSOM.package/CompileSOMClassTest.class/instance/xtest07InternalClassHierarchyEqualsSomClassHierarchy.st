as yet unclassified
xtest07InternalClassHierarchyEqualsSomClassHierarchy

	"This test is currently deactivated. It tests if the class
	hierarchy of system classes is the same as in SOM. Currently
	it isn't but there could be problems in the future because of this'"
	universe := SOMUniverse new.
	universe initializeRealGlobals.
	"self assertSuperClassOf: #Object is: #nil."
	self assertSuperClassOf: #Class is: #Object.
	self assertSuperClassOf: #Metaclass is: #Class.
	self assertSuperClassOf: #Nil is: #Object.
	self assertSuperClassOf: #Array is: #Object.
	self assertSuperClassOf: #Method is: #Array.
	self assertSuperClassOf: #Symbol is: #Object.
	self assertSuperClassOf: #Integer is: #Object.
	self assertSuperClassOf: #BigInteger is: #Object.
	self assertSuperClassOf: #Frame is: #Array.
	self assertSuperClassOf: #Primitive is: #Object.
	self assertSuperClassOf: #String is: #Object.
	self assertSuperClassOf: #Double is: #Object.