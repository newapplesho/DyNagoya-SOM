instance creation
inUniverse: universe withSomClass: aSOMClass numIndexable: numIndexable 
	| numberOfAdditionalFields |
	numberOfAdditionalFields := aSOMClass numberOfInstanceFields.
	^ (self 
		inUniverse: universe
		withNumberOfAdditionalFields: numberOfAdditionalFields
		withNumberOfIndexableFields: numIndexable)
		somClass: aSOMClass;
		yourself