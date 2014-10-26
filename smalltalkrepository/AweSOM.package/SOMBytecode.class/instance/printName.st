printing
printName

	"'SOMBC' size = 6, SOMBCDup --> DUP"
	| name |
	name := self class name.
	^ (name copyFrom: 6 to: name size) asUppercase