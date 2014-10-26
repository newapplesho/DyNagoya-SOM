tests
test28GlobalsTest

	self setUpParser: 'x = (^ EmptyTest, DoubleTest, HashTest)' andApply: #method.
	self assertNoFail: result.
	"self halt."
	"self assertBcAt: 1 is: SOMBCPushConstant."