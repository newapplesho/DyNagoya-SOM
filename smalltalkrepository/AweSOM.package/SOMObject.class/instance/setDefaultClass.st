accessing
setDefaultClass
	| somName |
	somName := self class somName.
	(universe hasGlobalAt: somName) ifTrue: [ self somClass: (universe globalAt: somName) ]