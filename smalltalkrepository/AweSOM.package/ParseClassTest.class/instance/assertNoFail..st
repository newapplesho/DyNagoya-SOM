assertion
assertNoFail: parseResult

	"parser printPosition"
	self deny: (parseResult isKindOf: OMetaFail).