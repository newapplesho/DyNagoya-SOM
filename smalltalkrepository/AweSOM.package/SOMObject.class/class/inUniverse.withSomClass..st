instance creation
inUniverse: universe withSomClass: aSOMClass 
	| numberOfAdditionalFields |
	numberOfAdditionalFields := 0. "aSOMClass numberOfInstanceFields 1 - self numberOfSharedFields 2."
	
	^ (self 
		inUniverse: universe
		withNumberOfAdditionalFields: numberOfAdditionalFields)
		somClass: aSOMClass;
		yourself