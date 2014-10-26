accessing
evaluationMethodWithParameters: numParams
	numParams = 0 ifTrue: [^ #value].
	"append with: for each parameter except the first"
	^ (2 to: numParams) inject: #value: into: [ :sig :each | sig, #with:]
	