instance creation
inUniverse: universe onSource: string
	| readStream parser |
	readStream := string asString readStream.
	
	parser := self new.
	parser stream: readStream.
	parser universe: universe.
	
	^ parser