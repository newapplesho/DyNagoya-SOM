running
setUp

	super setUp.
	frame := (SOMFrame 
		inUniverse: universe
		size: 10)
		somMethod: (SOMMethod 
				inUniverse: universe
				withNumberOfAdditionalFields: 0);
		yourself.
	frame2 := (SOMFrame 
		inUniverse: universe
		size: 10)
		somMethod: (SOMMethod 
				inUniverse: universe
				withNumberOfAdditionalFields: 0);
		yourself