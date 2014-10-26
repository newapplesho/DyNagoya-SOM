printing
printOn: stream

	"When self is in SOMUniverse globals then print
	symbol of self as found in global dictionary"
	(self universe symbolFor: self) ifNotNilDo: [:sym |
		stream
			nextPutAll: 'SOMGlobal(';
			nextPutAll: sym;
			nextPut: $).
		^ self].
	self somClass ifNil: [
		stream nextPutAll: 'a SOMObject without class'.
		^ self].
	stream
		nextPutAll: 'a SOM';
		nextPutAll: self somClass somName string