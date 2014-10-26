bytecode processing
doPushGlobal

	| global |
	global := 
		self universe 
			globalAt: (self currentBytecode literalValue)
			ifAbsent: [
				self sendUnknownGlobal: 
					self currentBytecode literalValue.
				^ self].
	self somFrame push: global