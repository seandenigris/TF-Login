as yet unclassified
initialize
	"self initialize."
	super initialize.
	Misses := 0.
	Requests := 0.
	Writes := 0.
	Evictions := 0.
	AllUserIdsRequests := 0.
	AllUsernamesRequests  := 0.
	Smalltalk addToStartUpList: self.