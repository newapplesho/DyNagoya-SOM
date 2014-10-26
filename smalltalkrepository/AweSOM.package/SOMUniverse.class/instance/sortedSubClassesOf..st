initializing
sortedSubClassesOf: class

	"Sort by inheritance hierarchy"
	^ (SortedCollection sortBlock: [:a :b | (a inheritsFrom: b) not])
		addAll: class withAllSubclasses;
		sortTopologically;
		yourself