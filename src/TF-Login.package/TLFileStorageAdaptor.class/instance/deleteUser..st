public
deleteUser: aUser
	rw exclusiveWrite: [
		self deleteUserUnsynchronized: aUser ]