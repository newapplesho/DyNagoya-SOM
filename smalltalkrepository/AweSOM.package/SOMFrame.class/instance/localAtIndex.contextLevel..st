as yet unclassified
localAtIndex: index contextLevel: level
	|contextFrame|
	contextFrame := self frameAtContextLevel: level.
	^ contextFrame at: (contextFrame localOffset + index)