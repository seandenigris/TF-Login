as yet unclassified
testLastLogin
	self assert: (user lastLogin = loginTime).
	user lastLogin: (loginTime := DateAndTime now).
	self assert: (user lastLogin = loginTime).
	