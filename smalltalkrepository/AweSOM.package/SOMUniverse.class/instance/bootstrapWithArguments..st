bootstrapping
bootstrapWithArguments: args 

	self 
		bootstrapWithEntryPoint: ((self globalAt: #System) lookupInvokable: #initialize:)
		withArguments: args.