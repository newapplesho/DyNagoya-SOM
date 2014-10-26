gobal accessing
globalAt: aSymbol ifAbsent: aBlock
	^ globals at: aSymbol ifAbsent: aBlock.