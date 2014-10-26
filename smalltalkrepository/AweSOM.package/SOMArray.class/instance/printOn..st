printing
printOn: stream

	stream nextPutAll: 'SOMArray'.
	self elements printAsSelfEvaluatingFormOn: stream.