loading
loadAndCompileSOMClass: className stub: classStubOrNil

	| source |
	source := self sourceOfClassFile: className.
	source ifNil: [^ nil].
	^ self compileSOMClassSource: source stub: classStubOrNil.