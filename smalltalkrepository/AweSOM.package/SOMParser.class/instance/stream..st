accessing
stream: aReadStream
	lexer := SOMLexer on: aReadStream.
	self getSym.