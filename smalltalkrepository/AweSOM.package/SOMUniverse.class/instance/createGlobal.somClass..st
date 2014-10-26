object creation
createGlobal: globalName somClass: className

	| sqClassName sqClass somClass instance |
	"If class exists in Squeak use it as base class"
	sqClassName :=  ('SOM' , className) asSymbol.
	sqClass := (Smalltalk
		classNamed: sqClassName)
		ifNil: [SOMObject].
	somClass := self
		globalAt: className
		ifAbsentPut: [self loadSOMClass: className].
	instance := sqClass
		inUniverse: self
		withSomClass: somClass.
	^ self
		globalAt: globalName
		put: instance.