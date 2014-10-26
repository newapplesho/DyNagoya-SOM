object creation
newNumber: number

	^ self numberCache
		at: number
		ifAbsentPut: [SOMNumber create: number in: self].