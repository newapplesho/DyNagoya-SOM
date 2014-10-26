tests
test01parseSystem

	| cgenc |
	self setUpParser: self classSystem.
	self assertNoFail: parser start.
	cgenc := parser cgenc.
	"self halt."