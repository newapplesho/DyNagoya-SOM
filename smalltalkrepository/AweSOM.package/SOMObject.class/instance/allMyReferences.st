accessing
allMyReferences

	| normalFields |
	normalFields := (1 to: self numberOfFields) collect: [:i | self fieldAtIndex: i].
	^ normalFields , self indexableFields 