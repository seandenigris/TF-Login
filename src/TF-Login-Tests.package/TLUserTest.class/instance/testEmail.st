as yet unclassified
testEmail
	self assert: (user email = 'user@emailaddress').
	user email: 'user@newaddress'.
	self assert: (user email = 'user@newaddress').
	
	