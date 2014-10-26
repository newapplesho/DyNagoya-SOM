assembling
combineSelectorAndArgs

	| parts args |
	args := self arguments allButFirst. "First is self"
	args ifEmpty: [^ self signature].
	args size = 1 ifTrue: [^ self signature , ' ' , args first].
	parts := (self signature subStrings: ':')
		with: args
		collect: [:sig :arg | sig , ': ' , arg].
	"Neeeeed join!!!"
	^ (parts inject: '' into: [:all :ea | all , ' ' , ea]) trimBoth.