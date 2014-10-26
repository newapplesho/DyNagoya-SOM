as yet unclassified
create: number in: universe

	number isFloat ifTrue: [^ SOMDouble inUniverse: universe new: number].
	number isInteger ifTrue: [
		^ number <=  SOMInteger maxInt
			ifTrue: [SOMInteger inUniverse: universe new: number]
			ifFalse: [SOMBigInteger inUniverse: universe new: number]].
	self halt.