tests
test02Subclassing
	| somArray newClass newInstance |
	self loadClazzes: {  #Array. #Object  }.
	somArray := universe globalAt: #Array.
	newClass := universe classClass 
		inUniverse: universe
		withSomSuperClass: somArray.
	self 
		assert: newClass squeakClass
		equals: SOMArray.
	newInstance := newClass primnew.
	self 
		assert: newInstance somClass
		equals: newClass