as yet unclassified
locWithoutTests

	| pi |
	pi := PackageInfo named: 'AweSOM'.
	^ (pi classes
		reject: [:class | class inheritsFrom: TestCase])
		inject: 0 into: [:sum :class | sum + class linesOfCode].
