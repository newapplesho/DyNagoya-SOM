instance creation
inUniverse: universe withSomClass: aSOMClass 
	| numberOfAdditionalFields |
	numberOfAdditionalFields := aSOMClass numberOfInstanceFields.
	^ (self 
		inUniverse: universe
		withNumberOfAdditionalFields: numberOfAdditionalFields)
		somClass: aSOMClass;
		yourself