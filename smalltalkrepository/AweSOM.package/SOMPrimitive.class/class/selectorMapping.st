primitve selectors
selectorMapping

	^ Dictionary newFrom: {		
		$~ -> #Tilde.
		$& -> #And.
		$| -> #Bar.
		$* -> #Star.
		$/ -> #Slash.
		$@ -> #At.
		$+ -> #Plus.
		$- -> #Minus.
		$= -> #Equal.
		$> -> #GreaterThan.
		$< -> #LowerThan.
		$, -> #Comma.
		$% -> #Percent.
		$\ -> #Backslash}