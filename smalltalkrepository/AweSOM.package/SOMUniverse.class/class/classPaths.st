accessing
classPaths

	^ ClassPaths ifNil: [
		self notify: 'classPaths was not set. Use SOMTools>>setClassPathBase: and pass the path to the SOM directory'].