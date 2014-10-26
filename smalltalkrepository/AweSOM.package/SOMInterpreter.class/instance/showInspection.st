debugging
showInspection

	| stackTrace bytecodes fullStackTrace stackContents stackPointer topElement realBytecode |
	stackTrace := String streamContents: [:s | self printStackOn: s].	
	stackContents := String streamContents: [:s | self somFrame printStackOn: s].
	realBytecode := self somMethod bytecodeAt: (self somFrame bytecodeIndex - 1).
	bytecodes := String streamContents: [:s | self somFrame printBytecodesOn: s].
	
	stackPointer := self somFrame stackPointer.
	topElement := self somFrame at: stackPointer.
	
	fullStackTrace := String streamContents: [:s | self printFullStacksOn: s].
	
	"inspect local variables or use following commands:"
	"self step"
	"self stepBytecode"
	
	"self halt."
	
	"locals are used by programmers to debug SOM"
	"however for Squeak they are unused"
	"the following lines avoid the annoying unused message of Squeak"
	{stackTrace. bytecodes. fullStackTrace. stackContents. stackPointer. topElement. realBytecode} size.