stack size
computeMaxStackDepth

	| depth |
	depth := 0.
	^ self bytecode inject: 0 into: [:maxDepth :ea |
		depth := depth + ea stackDepth.
		depth > maxDepth
			ifTrue: [depth]
			ifFalse: [maxDepth]].