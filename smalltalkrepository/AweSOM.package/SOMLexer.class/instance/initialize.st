initialize-release
initialize
	lineNumber := 0.
	peekDone := false.
	text := RWBinaryOrTextStream on: String new.
	buf := ''.
	bufP := 1.