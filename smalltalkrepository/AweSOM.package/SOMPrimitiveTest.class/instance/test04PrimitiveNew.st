tests
test04PrimitiveNew
	| clazz instance primLength |
	self loadClazzes: {  #Object. #Array  }.
	clazz := universe globalAt: #Array.
	instance := clazz primnew.
	self 
		assert: instance somClass
		equals: clazz.
	instance := clazz 
		performPrimitive: #primnew:
		withArguments: {  (universe newNumber: 5)  }.
	self 
		assert: instance somClass
		equals: clazz.
	primLength := instance 
		performPrimitive: #primlength
		withArguments: {   }.
	self 
		assert: primLength number
		equals: 5