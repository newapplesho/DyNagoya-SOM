initialize
initialize

	super initialize.
	self
		isPrimitive: false;
		onClassSide: false;
		locals: OrderedCollection new;
		literals: OrderedCollection new;
		bytecode: OrderedCollection new;
		arguments: OrderedCollection new;
		isFinished: false;
		isBlockMethod: false.