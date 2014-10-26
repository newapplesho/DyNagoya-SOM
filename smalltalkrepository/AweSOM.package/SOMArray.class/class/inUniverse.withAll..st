as yet unclassified
inUniverse: universe withAll: squeakColl

	| result |
	result := self inUniverse: universe size: squeakColl size.
	squeakColl withIndexDo: [:each :i | result at: i put: each].
	^ result