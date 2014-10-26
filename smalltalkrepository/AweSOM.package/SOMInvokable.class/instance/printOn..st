accessing
printOn: stream

	self somSignature = universe globalNil
		ifTrue: [^ stream nextPutAll: '<anonymous SOMMethod>'].
	
	stream
		nextPut: $<;
		nextPutAll: self class name; space;
		nextPutAll: self somHolder somName symbol asString;
		nextPutAll: '>>#';
		nextPutAll: self somSignature string;
		nextPut: $>.