file access
sourceOfClassFile: className

	| classFile theDir source |
	classFile := className , self classFileExtension.
	theDir := (self classPaths
		collect: [:path |FileDirectory on: path])
		detect: [:dir | dir fileExists: classFile]
		ifNone: [^ nil].
	"theDir ifNil: [self error: 'Cannot find class in classPath']."
	FileStream
		fileNamed: (theDir fullPathFor: classFile)
		do: [:s | source := s contents].
	^ source