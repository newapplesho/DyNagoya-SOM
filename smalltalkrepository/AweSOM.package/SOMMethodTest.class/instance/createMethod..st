helper
createMethod: source

	method := ((universe methodParser
		inUniverse: universe
		onSource: source)
			fakeCgenc;
			apply: #method) assembleIn: universe.