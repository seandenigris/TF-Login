as yet unclassified
testUsername
	self assert: (user username = 'TestUser').
	user username: 'NewUser'.
	self assert: (user username = 'NewUser').
	