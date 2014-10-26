initializing
initNil

	self globalAt: #nil put: nil.
	self globalAt: #nil put: (SOMObject inUniverse: self).