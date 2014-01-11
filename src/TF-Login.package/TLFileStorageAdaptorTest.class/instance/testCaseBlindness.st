as yet unclassified
testCaseBlindness
	db createUser: (TLRegisteredUser username: 'User1' password:  'pswd1' email: 'user1@emailaddress').
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].
	self assert: ((db userForUsername: 'User1' ) email = 'user1@emailaddress' ).
	self assert: ((db userForUsername:  'user1') email = 'user1@emailaddress' ).
	
	self assert: ((db userForUsername:  'user11') isNil ).
	
	self assert: (db usernameExists: 'USER1').