test-support
deleteDatabase
	rw exclusiveWrite: [
		self deleteDatabaseUnsynchronized]
