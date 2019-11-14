private
startExclusiveWrite
	monitor critical: [
		monitor waitWhile: [ busy or: [ readerCount > 0] ] for: #OkToWrite.
		busy := true]
