accessing
fieldAtIndex: index

	| realIndex |
	realIndex := self realFieldIndexFor: index.
	realIndex first = #fields ifTrue: [^ fields at: realIndex second].
	realIndex first = #shared ifTrue: [^ self instVarAt: realIndex second].
	self error: ['Unexpected symbol'].