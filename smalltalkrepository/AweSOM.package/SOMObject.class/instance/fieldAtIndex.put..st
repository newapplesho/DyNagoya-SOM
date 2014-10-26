accessing
fieldAtIndex: index put: object

	| realIndex |
	realIndex := self realFieldIndexFor: index.
	realIndex first = #fields ifTrue: [^ fields at: realIndex second put: object].
	realIndex first = #shared ifTrue: [^ self instVarAt: realIndex second put: object].
	self error: ['Unexpected symbol'].