bootstrapping
bootstrapFrameWithArguments: args
	^ (self interpreter pushNewFrameWithMethod: self bootstrapMethod)
		push: (self globalAt: #system);
		push: args;
		yourself.