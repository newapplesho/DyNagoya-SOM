accessing
addArgumentIfAbsent: argName

	(self arguments includes: argName) ifTrue: [^ false].
	self arguments add: argName.
	^ true