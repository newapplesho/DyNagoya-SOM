gobal accessing
symbolFor: global

	self flag: #rkrk. "Should return SOMSymbol!!?"
	^ globals keyAtValue: global ifAbsent: [nil].