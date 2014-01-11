as yet unclassified
testAddAndGetUser
	authenticationManager addUser: (TLPendingUser username: 'User1' password: 'pswd1' email: 'user1@emailaddress').
	
	self deny: ( (authenticationManager getUser: 'User1' password: 'pswd1' ifAbsent: [ nil ]) isNil).

	self assert: ( (authenticationManager getUser: 'User1' password: 'badpswd' ifAbsent: [ nil ]) isNil) 
	