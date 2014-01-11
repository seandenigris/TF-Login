as yet unclassified
testLoginUser
	| u |

	authenticationManager addUser: (TLPendingUser username: 'User1' password: 'pswd1' email: 'user1@emailaddress').
	
	u := authenticationManager loginUser: 'User1' password: 'pswd1' from: '127.0.0.1'.

	self assert: (u lastLoginFrom = '127.0.0.1').	
	self deny: (u lastLogin isNil).
	self assert: (u lastLogin <= DateAndTime now).	

