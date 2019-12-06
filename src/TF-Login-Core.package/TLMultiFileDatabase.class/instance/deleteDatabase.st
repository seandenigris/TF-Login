public
deleteDatabase
	rw exclusiveWrite: [
		self storageDirectory ensureDeleteAll.
		dirlist := nil]