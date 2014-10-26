as yet unclassified
outerContext
	| currentContext |
	currentContext := self.
	[ currentContext hasContext ] whileTrue: [ currentContext := currentContext somContext ].
	^ currentContext