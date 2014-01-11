as yet unclassified
setUp
	user := TLUser
		username: 'TestUser'
		email: 'user@emailaddress'
		lastLogin: (loginTime := DateAndTime now)
		lastLoginFrom: '127.0.0.1'
		loginCount: 0