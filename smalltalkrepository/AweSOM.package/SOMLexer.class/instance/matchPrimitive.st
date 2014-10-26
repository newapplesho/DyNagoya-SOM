lexing
matchPrimitive
	bufP := bufP + self primitive size.
	sym := #primitive.
	symChr := nil.
	text := RWBinaryOrTextStream with: self primitive.
	^ sym
	