patterns
methodName
	mgenc := universe methodGenClass new.
	mgenc addArgumentIfAbsent: #self.
	mgenc holder: cgenc.
	
	self symIsIdentifier ifTrue: [ ^ self unaryPattern   ].
	sym == #keyword      ifTrue: [ ^ self keywordPattern ].
	
	"else"
	^ self binaryPattern.