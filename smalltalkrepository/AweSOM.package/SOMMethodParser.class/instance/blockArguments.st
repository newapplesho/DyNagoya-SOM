patterns
blockArguments
	[ self expect: #colon.
	  mgenc addArgumentIfAbsent: self argument
	] doWhileTrue: [sym == #colon].