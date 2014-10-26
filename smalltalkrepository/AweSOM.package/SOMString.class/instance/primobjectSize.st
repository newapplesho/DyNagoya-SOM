primitives
primobjectSize
	
	"add 32-bit aligned size of string to basic objectSize"
	^ (super primobjectSize) primPlus:
		(self universe newNumber: ((self string size / 4) ceiling * 4))