fileout
fileout

	| cs pi |
	cs := ChangeSet newChangeSet.
	pi := PackageInfo named: 'AweSOM'.
	pi classes do: [:ea | cs addClass: ea].
	pi methods do: [:ea |
		cs
			noteNewMethod: ea compiledMethod
			forClass: ea actualClass
			selector: ea methodSymbol
			priorMethod: nil].
	cs fileOut.