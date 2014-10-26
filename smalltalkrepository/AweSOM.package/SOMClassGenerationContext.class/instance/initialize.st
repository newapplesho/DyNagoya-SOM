initialization
initialize

	super initialize.
	self
		isClassSide: false;
		superName: self defaultSuperClassName;
		instanceFields: OrderedCollection new;
		classFields: OrderedCollection new;
		instanceMethods: OrderedCollection new;
		classMethods: OrderedCollection new;
		theName: ''.