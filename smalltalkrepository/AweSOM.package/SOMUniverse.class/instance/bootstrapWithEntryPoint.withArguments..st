bootstrapping
bootstrapWithEntryPoint: invokable withArguments: args

	| bootstrapFrame |
	bootstrapFrame := self bootstrapFrameWithArguments: args.
	invokable ifNotNil: [invokable invokeInFrame: bootstrapFrame].
	self interpreter start.