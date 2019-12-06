private
endExclusiveWrite
	monitor critical: [
		busy := false.
		
		self preferWriters
			ifTrue: [
				(monitor queueFor: #OkToWrite)  isEmpty
					ifTrue: [ monitor signalAll: #OkToRead]
					ifFalse: [ monitor signalAll: #OkToWrite]]
			ifFalse: [
				(monitor queueFor: #OkToRead)  isEmpty not
					ifTrue: [ monitor signalAll: #OkToRead]
					ifFalse: [ monitor signalAll: #OkToWrite]]]
				