printing
printStackOn: stream
	| currentFrame |
	
	currentFrame := self somFrame.
	[currentFrame = universe globalNil] 
		whileFalse: [
			stream nextPutAll: currentFrame somMethod asString.
			
			currentFrame somCurrentObject ~= self universe globalNil
				ifTrue: [stream nextPutAll: ' in '; nextPutAll: currentFrame somCurrentObject somClass asString].
				
			currentFrame arguments ~= self universe globalNil
				ifTrue: [stream nextPutAll: ' ('; nextPutAll: currentFrame arguments asString; nextPutAll: ') '].
				
			stream cr.
			currentFrame := currentFrame somPreviousFrame.
		]