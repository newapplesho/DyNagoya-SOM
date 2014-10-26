printing
printOn: stream

	stream nextPutAll: 'SOMFrame:'.
	stream cr.
	self printStackOn: stream