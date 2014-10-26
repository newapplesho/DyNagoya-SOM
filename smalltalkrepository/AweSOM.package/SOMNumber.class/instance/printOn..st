printing
printOn: stream

	stream 
		nextPutAll: 'SOMNumber(';
		print: self number;
		nextPut: $).