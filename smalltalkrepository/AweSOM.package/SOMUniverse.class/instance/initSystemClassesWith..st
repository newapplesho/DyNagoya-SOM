initializing
initSystemClassesWith: classLoader

	| systemClasses name |
	systemClasses := self sortedSubClassesOf: SOMObject.
	systemClasses do: [:class | self initSystemClassFrom: class].
	(self globalAt: #Class) somSuperClass: (self globalAt: #Object).
	systemClasses do: [:class |
		name := class somName.
		(self globalAt: name) somName: (self newSymbol: name).
		classLoader value: name].