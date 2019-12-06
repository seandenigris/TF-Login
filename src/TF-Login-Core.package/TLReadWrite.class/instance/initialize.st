initialization
initialize
	super initialize.
	monitor := Monitor new.
	readerCount := 0.
	busy := false