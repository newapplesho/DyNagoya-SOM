primitives
primprintString: somString
	
	self universe outStream
		nextPutAll: somString string;
		flush.