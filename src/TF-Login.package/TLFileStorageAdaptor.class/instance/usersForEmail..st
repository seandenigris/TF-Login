public
usersForEmail: email
	rw sharedRead: [
		^ self usersForEmailUnsynchronized: email ]