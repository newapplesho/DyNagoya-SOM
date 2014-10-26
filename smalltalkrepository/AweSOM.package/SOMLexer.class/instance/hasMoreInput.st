private
hasMoreInput
	self readBufferIfEmpty: [^ false].
	
	^ true