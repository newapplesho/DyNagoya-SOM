class path
setClassPathBase: basePath

	"SOMTools setClassPathBase: SmalltalkImage current imagePath , '/SOM'"
	| standard examples dir |
	standard := {basePath , '/Smalltalk'.
				   basePath , '/TestSuite'.
				   basePath , '/SUnit'}.
	
	dir := (basePath , '/Examples') asFileReference.
	examples := dir allDirectories
		collect: [:ea | ea asAbsolute fullName ].
	^ SOMUniverse classPaths: standard , examples.