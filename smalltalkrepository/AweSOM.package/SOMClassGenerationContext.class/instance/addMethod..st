adding
addMethod: methodGenContext

	^ self isClassSide
		ifFalse: [self instanceMethods add: methodGenContext]
		ifTrue: [
			methodGenContext onClassSide: true.
			self classMethods add: methodGenContext]