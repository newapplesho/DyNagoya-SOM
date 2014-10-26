printing
printStackOn: stream
	"prints value of stack pointer and the content of each stack slot"

	stream nextPutAll: '    Method: ';
		nextPutAll: self somMethod asString;
		cr;
		nextPutAll: '    Stackpointer: ';
		nextPutAll: self stackPointer asString;
		cr.
	
	self stackPointer to: 1 by: -1 do:
		[ :index |
		| somObject |
		index = self stackPointer ifTrue: [stream nextPutAll: '-> ']
									   ifFalse:[stream nextPutAll: '   '].
		somObject := self at: index.
		self printStackElement: somObject atIndex: index on: stream ]