primitives
primobjectSize

	"basic object size in SOM++ is: 5 words (vtable, hash, objectSize, numberOfFields, gcField)
	basic object size in AweSOM is: 5 words (universe, hash, objectSize, numberOfFields, gcField)
	additional words are needed for each field
	word is 4 byte and objectSize returns the size in bytes (32-bit aligned)"
	^ self universe newNumber:
		(self class instSize - 1 +
		self numberOfIndexableFields) * 4