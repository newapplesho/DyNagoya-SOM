as yet unclassified
argumentAtIndex: index contextLevel: level put: object
	| contextFrame |
	contextFrame := self frameAtContextLevel: level.
	
	index > contextFrame somMethod numberOfArguments 
		ifTrue: [self error: 'index > #args'].
		
	(self frameAtContextLevel: level)
		at: index put: object