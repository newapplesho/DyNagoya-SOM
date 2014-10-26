patterns
primary: doSuper
	| superSend |
	superSend := doSuper.
	
	self symIsIdentifier ifTrue: [
		| v |
		v := self variable.
		v = #super ifTrue: [
			"v := #self. sends to #super push #self as receiver"
			superSend := true.
		].
		"self genPushVariable: v."
		mgenc lookupVariable: v in: universe.
		^ superSend.
	].

	sym == #newTerm ifTrue: [
		self nestedTerm.
		^ superSend.
	].

	sym == #newBlock ifTrue: [
		self parseNestedBlock.
		^ superSend
	].

	self literal.
	^ superSend