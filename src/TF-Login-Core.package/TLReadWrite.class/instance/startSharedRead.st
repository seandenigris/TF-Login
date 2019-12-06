private
startSharedRead
	monitor critical: [
		self preferWriters
			ifTrue: [
				monitor waitWhile: [ busy or: [(monitor queueFor: #OkToWrite) isEmpty not]] for: #OkToRead]
			ifFalse: [
				monitor waitWhile: [ busy ] for: #OkToRead].
		readerCount := readerCount + 1]
