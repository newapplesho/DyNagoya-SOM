printing
printStackElement: somObject atIndex: index on: stream 
	
	| somNil somClazz |
	stream
		nextPutAll: '[';
		nextPutAll: index asString;
		nextPutAll: '] '.
		
	index <= self somMethod numberOfArguments 
		ifTrue: [stream nextPutAll: '(arg '; nextPutAll: index asString; nextPutAll: ') '].
	((index > self somMethod numberOfArguments) and: [index <= (self somMethod numberOfLocals + self somMethod numberOfArguments)])
		ifTrue: [stream nextPutAll: '(local '; nextPutAll: (index - self somMethod numberOfArguments) asString; nextPutAll: ') '].
			
	somNil := self universe globalNil.
	(somObject isNil or: [ somObject == somNil ]) ifTrue: 
		[ stream
			nextPutAll: 'nil';
			cr.
		^ self ].
	somClazz := [somObject somClass] on: Error do: [somObject].
	(somClazz isNil or: [ somClazz == somNil ]) ifTrue: 
		[ stream
			nextPutAll: 'object without class';
			cr.
		^ self ].
	stream
		nextPutAll: somObject asString;
		nextPutAll: ' with class: ';
		nextPutAll: somClazz asString;
		cr