printing
printOn: stream
	
	stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPutAll: ' index: ';
		print: self index;
		nextPutAll: ' context: ';
		print: self contextIndex;
		nextPut: $>.