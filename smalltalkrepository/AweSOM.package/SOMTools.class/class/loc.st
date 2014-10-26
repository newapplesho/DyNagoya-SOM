as yet unclassified
loc

	| pi |
	pi := PackageInfo named: 'AweSOM'.
	^ pi classes inject: 0 into: [:sum :class | sum + class linesOfCode].
