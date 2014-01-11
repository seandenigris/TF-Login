as yet unclassified
testLastLogin
	| loginDT |
	self assert: (user lastLogin = DateAndTime epoch).
	user lastLogin: (loginDT := DateAndTime now).
	self assert: (user lastLogin = loginDT).
	