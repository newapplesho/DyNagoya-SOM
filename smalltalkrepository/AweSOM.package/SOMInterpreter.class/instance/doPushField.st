bytecode processing
doPushField

	self somFrame push:
		(self somCurrentObject fieldAtIndex: 
			(self currentBytecode fieldIndex)).