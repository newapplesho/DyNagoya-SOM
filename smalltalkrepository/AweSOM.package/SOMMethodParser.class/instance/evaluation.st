patterns
evaluation
	| superSend |
	superSend := self primary: false.
	
	(self symIsIdentifier     or: [
	 sym == #keyword          or: [
	 sym == #operatorSequence or: [
	 self symIn: BinaryOpSyms]]]) ifTrue: [
		self messages: superSend.
	]