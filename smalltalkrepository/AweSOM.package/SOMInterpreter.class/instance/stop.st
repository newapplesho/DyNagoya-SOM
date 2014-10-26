initialization
stop
	"rolls back to the first frame which contains the halt command; saves current frame for debug purposes"
	
	| |
	self halt.
	stopped := true