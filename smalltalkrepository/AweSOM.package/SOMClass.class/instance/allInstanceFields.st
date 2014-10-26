accessing
allInstanceFields

	| instFields |
	instFields := self somInstanceFields elements collect: [:ea | ea string].
	^ self somSuperClass isClass
		ifTrue: [self somSuperClass allInstanceFields , instFields]
		ifFalse: [instFields].