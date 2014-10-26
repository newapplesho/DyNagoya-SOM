accessing
wipeIndexableFields
	1 to: self elements size do: [ :i | self at: i put: universe globalNil ]