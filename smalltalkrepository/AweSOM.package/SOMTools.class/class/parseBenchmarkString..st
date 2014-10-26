as yet unclassified
parseBenchmarkString: string

	"Extracts the numbers from the output"
	^ (string
		regex: 'RESULT\: [0-9]+ ms|All tests completed \([0-9]+ ms\)'
		matchesCollect: [:m | (m allRegexMatches: '[0-9]+') first])
		inject: ''
		into: [:all :ea | all , String cr , ea].
	