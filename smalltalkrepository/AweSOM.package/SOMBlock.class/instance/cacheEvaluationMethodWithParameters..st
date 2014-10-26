accessing
cacheEvaluationMethodWithParameters: numParams 
	| signature replaceIndex evaluationMethod |
	signature := self evaluationMethodWithParameters: numParams.

	"check if block class already has an evaluationMethod for the given parameter"
	evaluationMethod := self somClass lookupInvokable: signature.
	evaluationMethod class = SOMBlockEvaluation ifTrue: [ ^ self ].

	"add to instance methods or replace existing primitives"
	evaluationMethod ifNotNil: 
		[ replaceIndex := self somClass somInstanceInvokables indexOf: evaluationMethod ].
	evaluationMethod := self createEvalutationMethodWithParameters: numParams.
	replaceIndex ifNil: [ ^ self somClass somInstanceInvokables add: evaluationMethod ].
	self somClass somInstanceInvokables 
		at: replaceIndex
		put: evaluationMethod