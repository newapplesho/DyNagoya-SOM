as yet unclassified
copyArgumentsFrom: oldFrame

	| numArgs |
	numArgs := self somMethod numberOfArguments.
	1 to: numArgs do: [:argIndex |
		self 
			at: argIndex
			put: (oldFrame stackElementAtIndex: numArgs - argIndex + 1)].