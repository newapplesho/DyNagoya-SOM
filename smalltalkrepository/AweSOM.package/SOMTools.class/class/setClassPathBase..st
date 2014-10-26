class path
setClassPathBase: basePath

	"SOMTools setClassPathBase: SmalltalkImage current imagePath , '/SOM'"
	| standard examples dir |
	standard := {basePath , '/Smalltalk'.
				   basePath , '/TestSuite'.
				   basePath , '/SUnit'.
				   basePath , '/Omni' }.
	
	
	dir := FileDirectory on: basePath , '/Examples'.
	examples := dir directoryNames
		select: [:ea | (ea beginsWith: '.') not]
		thenCollect: [:ea | dir fullPathFor: ea].
	^ SOMUniverse classPaths: standard , examples.