patterns
classStart
	cgenc theName: self identifier.
	
	self expect: #equal.
	
	sym == #identifier
		ifTrue:  [cgenc superName: self identifier.].
		