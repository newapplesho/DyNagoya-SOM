helper
assembleMethod: name withArguments: args withByteCodes: byteCodeGenerator 
	^ self assembleMethod: name withArguments: args withLocals: {} withByteCodes: byteCodeGenerator