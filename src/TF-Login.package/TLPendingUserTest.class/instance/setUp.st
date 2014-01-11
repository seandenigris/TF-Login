as yet unclassified
setUp
	user := TLPendingUser
		username: 'TestUser'
		password: 'password'
		email: 'user@emailaddress'
		regId: 'xyzzy'
		confirmationDeadline: (self deadlineSecs: 60)