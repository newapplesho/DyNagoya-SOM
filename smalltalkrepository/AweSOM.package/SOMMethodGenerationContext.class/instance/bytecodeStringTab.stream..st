printing
bytecodeStringTab: tabWidth stream: s

	self bytecode do: [:ea |
		tabWidth timesRepeat: [s tab].
		ea printOn: s.
		s cr.
		(ea isKindOf: SOMBCPushBlock) ifTrue: [
			(ea mgenc literals at: ea index) bytecodes first mgenc
				bytecodeStringTab: tabWidth+1
				stream: s.]].