loading
loadSOMClass: className

	^ self compiler
		loadAndCompileSOMClass: className
		stub: nil.