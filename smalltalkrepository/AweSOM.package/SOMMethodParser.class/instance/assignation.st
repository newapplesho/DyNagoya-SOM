patterns
assignation
	| list |
	list := OrderedCollection new.
	
	self assignments: list.

	self evaluation.
	
	list do: [:v | mgenc bcDup ].
	list do: [:v | mgenc lookUpAndPop: v in: universe ]