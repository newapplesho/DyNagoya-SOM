bytecode processing
doPopField
	"pops the topmost stack element into the field which is identified by field index in the bytecode"
	
	self somCurrentObject
		fieldAtIndex: (self currentBytecode fieldIndex)
		put: self somFrame pop