accessing
somClass

	self flag: #rkrk. "Hack. Some objects don't have a proper class...'"
	(somClass isKindOf: SOMClass)
		ifFalse: [self setDefaultClass].
	^ somClass