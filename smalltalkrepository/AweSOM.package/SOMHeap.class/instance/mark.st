garbage collection
mark

	self rootObjects do: [:ea | self markObject: ea].