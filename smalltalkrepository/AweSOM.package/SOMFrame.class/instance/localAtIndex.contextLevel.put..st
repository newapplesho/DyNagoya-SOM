as yet unclassified
localAtIndex: index contextLevel: level put: object
	|contextFrame|
	contextFrame := self frameAtContextLevel: level.
	contextFrame at: (contextFrame localOffset + index) put: object