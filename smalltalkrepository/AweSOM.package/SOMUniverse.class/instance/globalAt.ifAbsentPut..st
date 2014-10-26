gobal accessing
globalAt: aSymbol ifAbsentPut: aBlock
"Treat nil values as absent values"
	| result |
	result := globals at: aSymbol ifAbsentPut: aBlock.
	result ifNil: [
		result := aBlock value.
		globals at: aSymbol put: result].
	^ result