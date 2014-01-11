tests
testSaveAndRestore 

	| obj1 obj2 |
	
	obj1 := '123'.
	obj2 := '456'.
	
	db saveObject: obj1 withName: 'obj1'.
	db saveObject: obj2 withName: 'obj2'.
	
	obj1 := db restoreObjectNamed: 'obj2'.
	self assert: obj1 = '456'.
	
	obj1 := db restoreObjectNamed: 'obj1'.
	self assert: obj1 = '123'.

	obj1 := OrderedCollection with: 'aaa' with: 'bbb'.
	db saveObject: obj1 withName: 'obj1'.
	
	self assert: ((db restoreObjectNamed: 'obj1') at: 2) = 'bbb'.