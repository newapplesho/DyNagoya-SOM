patterns
assignment
	| v |
	v := self variable.
	mgenc addLiteralIfAbsent: v.
	
	self expect: #assign.
	
	^ v