public
fileCount
	| count |
	count := 0.
	rw sharedRead: [
		self fileNamesDo: [ :ignored | count := count + 1]].
	^ count