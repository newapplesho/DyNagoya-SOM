printing
printOn: stream


	self signature ifNil: [
		super printOn: stream.
		^ self].
	stream
		nextPutAll: '<SOMMgenc signature: ';
		nextPutAll: self signature;
		nextPut: $>.