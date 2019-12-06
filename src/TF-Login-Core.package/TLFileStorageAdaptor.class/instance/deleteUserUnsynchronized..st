private
deleteUserUnsynchronized: aUser
		db deleteFilesNamed: (self key: aUser)