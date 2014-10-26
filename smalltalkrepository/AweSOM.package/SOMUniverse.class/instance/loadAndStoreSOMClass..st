loading
loadAndStoreSOMClass: className

	^ self
		globalAt: className
		put: (self loadSOMClass: className)