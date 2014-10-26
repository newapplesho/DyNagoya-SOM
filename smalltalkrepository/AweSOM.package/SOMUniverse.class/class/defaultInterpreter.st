accessing
defaultInterpreter
	DefaultInterpreter ifNil: [DefaultInterpreter := SOMInterpreter ].
	^ DefaultInterpreter