as yet unclassified
arguments

	^ (1 to: self somMethod numberOfArguments) collect: [ :argIndex |
			self argumentAtIndex: argIndex contextLevel: 1
		]