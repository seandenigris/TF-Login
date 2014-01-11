tests
testVersions
	| obj1 obj2 |
	obj1 := 0.
	db saveObject: obj2 withName: '2'.
	obj2 := 1000.
	db maxEntryCount: 3.
	
	1 to: 42 do: [ :n |
		obj1 := n.
		db saveObject: obj1 withName: '1'.
		obj2 := 1000 + n..
		db saveObject: obj2 withName: '2'].
	
	self assert: (db lastSavedFileNamed: '1') = '1.42'.
	self assert: obj1 = 42.

	self assert: (db lastSavedFileNamed: '2') = '2.43'.
	self assert: obj2 = 1042.

	db deleteFilesNamed: '1'.
	self assert: (db lastSavedFileNamed: '1') isNil.
	self assert: (db restoreObjectNamed: '1') isNil
		 