compiling
doneCompiling
	super doneCompiling.
	self withAllSubclassesDo: [:each | each resetCaches]