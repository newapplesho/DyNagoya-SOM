as yet unclassified
argumentAtIndex: index contextLevel: level

	| contextFrame |
	contextFrame := self frameAtContextLevel: level.
	
	index > contextFrame somMethod numberOfArguments
		ifTrue: [self error: 'index > #args'].
		
	^ contextFrame at: index