public
deleteDatabase
	rw exclusiveWrite: [
		self storageDirectory recursiveDelete.
		dirlist := nil]