as yet unclassified
test05UnsharedFieldInMethodSubClass
	| cgenc somClass instance privateInstVarNames |
	
	"Instance fields declared in SOM might not map properly to the field 'fields', if on the VM-side instance fields are added to subclasses of SOMObject that are not supposed to be visible from SOM, e.g. Method's field 'bytecodes'."
	
	self loadClazzes: {  #Object. #Method  }.
	cgenc := self createCgencFromSource: 
	  'MethodSubClass = Method(	| thisMightCollideWithBytecodes |
	   setField = (thisMightCollideWithBytecodes := 42.))'.
	somClass := cgenc assembleIn: universe.
	instance := somClass primnew.
	universe 
		bootstrapWithEntryPoint: (somClass somInstanceInvokables at: 1)
		withArguments: instance.
	privateInstVarNames := instance class instVarNames select: [ :each | (each beginsWith: 'som') not ].
	privateInstVarNames do: 
		[ :each | 
		self 
			assert: ((universe newNumber: 42) primEqual: (instance instVarNamed: each))
			equals: (universe globalAt: #false) ]