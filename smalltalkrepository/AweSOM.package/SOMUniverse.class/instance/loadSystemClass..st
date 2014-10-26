loading
loadSystemClass: classStubName

	^ self compiler
		loadAndCompileSOMClass: classStubName
		stub: (self globalAt: classStubName ifAbsent: [nil]).