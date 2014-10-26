initialization
initialize
	" self initialize "
	super initialize.
	self withAllSubclassesDo: [:each | each resetCaches].