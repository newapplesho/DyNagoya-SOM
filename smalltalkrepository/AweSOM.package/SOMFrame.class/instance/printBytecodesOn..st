printing
printBytecodesOn: stream

	"prints value of stack pointer and the current bytecodes"
	stream
		nextPutAll: 'Method: ';
		nextPutAll: self somMethod asString.
	self somMethod numberOfArguments > 0 ifTrue: [
		stream
			nextPutAll: ' in object: ';
			nextPutAll: (self argumentAtIndex: 1 contextLevel: 1) asString].
	stream cr.
	self somMethod bytecodes doWithIndex: [:bc :index |
		index = (self bytecodeIndex - 1) ifTrue: [stream nextPutAll: '->'].
		stream nextPutAll: bc asString; cr.
	]