tests
test02parseObject

	| cgenc |
	self setUpParser: self classObject.
	self assertNoFail: parser start.
	cgenc := parser cgenc.
	"self halt."