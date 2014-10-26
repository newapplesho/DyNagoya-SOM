instance creation
on: aReadStream
	| lexer |
	[aReadStream isKindOf: PositionableStream ] assert.
	
	lexer := self new.
	lexer stream: aReadStream.
	^ lexer