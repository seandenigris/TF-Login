as yet unclassified
testLastLoginFrom
	self assert: (user lastLogin = DateAndTime epoch).
	user lastLoginFrom: '192.168.1.2'.
	self assert: (user lastLoginFrom = '192.168.1.2' ).
	