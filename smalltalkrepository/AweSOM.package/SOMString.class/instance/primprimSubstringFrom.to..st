primitives
primprimSubstringFrom: start to: end 
	
	^ self universe newString: 
		(self string copyFrom: start number to: end number)