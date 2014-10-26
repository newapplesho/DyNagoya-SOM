lexing
matchColonOrAssignment
	(self bufchar: bufP + 1) == $= ifTrue: [
		sym := #assign.
		bufP := bufP + 2.
		symChr := nil.
		text := RWBinaryOrTextStream with: ':='.
		^ sym
	].

	^ self match: #colon.