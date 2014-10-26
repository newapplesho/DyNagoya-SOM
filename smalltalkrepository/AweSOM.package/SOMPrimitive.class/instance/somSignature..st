accessing
somSignature: anObject 

	super somSignature: anObject.
	self realSignature: (self translateSignature: self somSignature string)