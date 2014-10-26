testing
found

	^ self isArgument or: [
	  self isLocal    or: [
	  self isField    or: [
	  self isGlobal]]]