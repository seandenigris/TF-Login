as yet unclassified
testLastLoginFrom
	self assert: (user lastLoginFrom = '127.0.0.1' ).
	user lastLoginFrom: '192.168.1.2'.
	self assert: (user lastLoginFrom = '192.168.1.2' ).
	