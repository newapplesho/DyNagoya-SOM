as yet unclassified
frameAtContextLevel: level 
	| frame |
	frame := self.
	level - 1 timesRepeat: [ frame := frame somContext ].
	^ frame