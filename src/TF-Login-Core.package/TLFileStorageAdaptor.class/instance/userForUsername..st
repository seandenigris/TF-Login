public
userForUsername: username
	rw sharedRead: [ 
		^ self userForUsernameUnsynchronized: username]