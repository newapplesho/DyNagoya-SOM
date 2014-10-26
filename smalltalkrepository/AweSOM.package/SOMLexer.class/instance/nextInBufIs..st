helper
nextInBufIs: aString
	| p |
	p := buf findString: aString startingAt: bufP.
	^ p == bufP