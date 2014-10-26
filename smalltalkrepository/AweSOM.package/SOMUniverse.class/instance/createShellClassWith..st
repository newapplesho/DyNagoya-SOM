code evaluation
createShellClassWith: code

	^ String streamContents: [:stream |
		stream
			nextPutAll: 'ShellClass = ('; cr;
			nextPutAll: 'run = ('; cr;
			nextPutAll: code; cr;
			nextPutAll: '))'].