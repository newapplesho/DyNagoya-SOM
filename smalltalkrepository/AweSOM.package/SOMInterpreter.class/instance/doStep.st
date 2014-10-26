debugging
doStep

	| bytecodeIndex originalBytecode |
	(self currentBytecode owningFrames includes: self somFrame)
		ifFalse: [
			"if we are not in the right frame; execute the normal bytecode"
			^ self perform: (self instructionSelectors at: 
				self currentBytecode originalBytecode class)].
			
	"uninstall step bytecode if necessary and reinstall original bytecode"
	originalBytecode := self currentBytecode originalBytecode.
	self currentBytecode owningFrames remove: self somFrame.
	self currentBytecode owningFrames ifEmpty: [ 
		bytecodeIndex := self somFrame bytecodeIndex.
		self somMethod bytecodeAt: bytecodeIndex - 1 put: originalBytecode].
	
	"display inspection view again"
	self showInspection.
	
	"execute the normal bytecode"
	self currentBytecode: originalBytecode.
	self perform: (self instructionSelectors at: 
		self currentBytecode class)
	