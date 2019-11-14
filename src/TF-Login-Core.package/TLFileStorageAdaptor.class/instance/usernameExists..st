public
usernameExists: username
	^ (self userForUsername: username asLowercase) notNil 