as yet unclassified
testCaseBlindness

	authenticationManager addUser: (TLPendingUser username: 'User1' password: 'pswd1' email: 'user1@emailaddress').
	[authenticationManager storageAdaptor processing] whileTrue: [ 100 milliSeconds asDelay wait ].
	self assert: (authenticationManager usernameExists: 'USER1').	

	self assert: ( (authenticationManager getUser: 'USER1' password: 'pswd1' ifAbsent: [ nil ]) notNil) 

