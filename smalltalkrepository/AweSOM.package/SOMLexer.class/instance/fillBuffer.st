accessing
fillBuffer
	stream atEnd ifTrue: [^ -1].
	
	buf := stream nextLine.
	buf ifNil: [^ -1].
	
	lineNumber := lineNumber + 1.
	
	bufP := 1.
	^ buf size.