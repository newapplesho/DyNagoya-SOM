as yet unclassified
performPrimitive: selector withArguments: arguments

	"If self is of kind SOMClass, primitives might either be instance primitives of SOMClass or class side primitives of the corresponding class. This dispatch is currently made during invocation.
	This is extremely unsexy code. Class primitives might need access to the universe or the class. Currently class primitives are implemented on the class side of SOMObject subclasses. As class methods do not have access to the universe this / the SOMClass object has to be passed in."
	| class classSelector |
	class := self squeakClass.
	classSelector := (selector, #inSomClass:) asSymbol.
	^ (class respondsTo: classSelector)
		ifTrue: [class perform: classSelector withArguments: arguments, {self}.]
		ifFalse:[self perform: selector withArguments: arguments].