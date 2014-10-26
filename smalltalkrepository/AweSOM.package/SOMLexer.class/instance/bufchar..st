private
bufchar: p
	^ p > buf size
		ifTrue:  [nil]
		ifFalse: [buf at: p]