message sending
sendMessage: message withArguments: args inClass: class
	| frame invokable |
	frame := self universe interpreter somFrame.
	frame push: self.
	args do: [ :arg | frame push: arg ].
	invokable := class lookupInvokable: message.
	invokable invokeInFrame: frame