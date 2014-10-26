printing
printOn: stream

	"stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPutAll: ' index: ';
		print: self index; 
		nextPut: $>."
	stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPutAll: ' index: ';
		print: self index;
		nextPutAll: ' value: ';
		print: self literalValue;
		nextPut: $>.