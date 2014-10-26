printing
printOn: stream

	stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPut: $>.