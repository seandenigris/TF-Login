tests
testCapacity
	| fileNames  |
	db maxFiles: 7.
	1 to: 200 by: 37 do: [ :count |
		db deleteDatabase.
		1 to: count do: [ :n |
			db saveObject: n withName: (n printStringLength: 3 padded: true)].
		self assert: db fileCount = count.
		Transcript show: 'count: ', count asString ; cr.
		Transcript show: 'file count: ', db fileCount asString; cr.
		
		self assert: db fileNames size = count.
		fileNames := db fileNames sorted.
		db reinitialize.
		self assert: db fileCount = count.
		self assert: db fileNames size = count.
		self assert: db fileNames sorted = fileNames.
		1 to: count do: [ :n |
			self assert: (db restoreObjectNamed: (n printStringLength: 3 padded: true)) = n].
	]
	