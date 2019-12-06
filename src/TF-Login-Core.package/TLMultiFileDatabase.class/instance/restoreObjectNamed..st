public
restoreObjectNamed: aString
	rw sharedRead: [
		| entry |
		entry := self lastEntryNamed: aString.
     		^ entry ]
