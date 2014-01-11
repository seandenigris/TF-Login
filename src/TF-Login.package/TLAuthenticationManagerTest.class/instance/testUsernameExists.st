as yet unclassified
testUsernameExists

	authenticationManager addUser: (TLPendingUser username: 'User1' password: 'pswd1' email: 'user1@emailaddress').
	
	self assert: (authenticationManager usernameExists: 'User1').	

