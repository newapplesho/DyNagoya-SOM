assembling
assemble: holderClass

	| compileClass |
	compileClass := self onClassSide
		ifTrue: [holderClass class]
		ifFalse: [holderClass].
	compileClass compile: (String streamContents: [:s | s
		nextPutAll: self combineSelectorAndArgs; cr;
		nextPutAll: self fakeSource])