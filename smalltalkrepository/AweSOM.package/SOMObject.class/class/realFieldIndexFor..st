accessing
realFieldIndexFor: index
	^ RealFieldIndexCache at: index ifAbsentPut: [
		| diff |
		diff := index - self numberOfSharedFields.
		diff <= 0
			ifTrue: [{#shared.
				self allInstVarNames indexOf: (self allSharedFields at: index)}]
			ifFalse: [{#fields. diff}].]