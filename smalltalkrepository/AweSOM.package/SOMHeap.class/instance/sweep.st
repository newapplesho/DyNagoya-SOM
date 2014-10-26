garbage collection
sweep

	"remove marked objects from heap
	reset unmarked objects at the same time"
	| remove |
	self objects removeAllSuchThat: [:ea |
		remove := ea gcField = false.
		ea gcField: false.
		remove].