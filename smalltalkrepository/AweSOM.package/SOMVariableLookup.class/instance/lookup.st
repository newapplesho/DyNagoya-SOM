lookup
lookup

	#(#lookupArgument #lookupLocal #lookupField #lookupGlobal) do: [:sel |
		self perform: sel.
		self found ifTrue: [^ self]].