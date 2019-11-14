private
endSharedRead
	monitor critical: [
		readerCount := readerCount - 1.
		readerCount = 0 ifTrue: [ monitor signalAll: #OkToWrite ]]
