helper
methodParser
	^ universe methodParser new
			universe: self universe;
			shouldReadSources: self shouldReadSources;
			yourself