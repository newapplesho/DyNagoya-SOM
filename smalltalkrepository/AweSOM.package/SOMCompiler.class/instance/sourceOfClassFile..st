file access
sourceOfClassFile: className

	| classFile theDir source stream |
	classFile := className , self classFileExtension.
	theDir := (self classPaths
		collect: [:path | path asFileReference ])
		detect: [:dir | (dir resolveString: classFile) exists ]
		ifNone: [^ nil].
	"theDir ifNil: [self error: 'Cannot find class in classPath']."
	stream := (theDir resolveString: classFile) readStream.
	source := stream contents.
	stream close.
	^ source