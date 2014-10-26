accessing
addLocalIfAbsent: varName

	(self locals includes: varName) ifTrue: [^ false].
	self locals add: varName.
	^ true