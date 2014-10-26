private
printableSymbol
	^ sym == #integer         or: [
	  sym == #STString        or: [
	  self symIsIdentifier    or: [
	  sym == #keyword         or: [
	  sym == #keywordSequence or: [
	  sym == #operatorSequence    ]]]]]