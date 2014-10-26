helper
nextWordInBufIs: aString
   (self nextInBufIs: aString) ifTrue: [
     | nextPos nextChar |
      nextPos := bufP + aString size.
       
      nextPos > buf size ifTrue: [^true].
       
      nextChar := buf at: nextPos.
      ^ (nextChar isLetter or: [nextChar isDigit]) not.
	].

	^ false.