as yet unclassified
newUser

	| user |	
	user := self oldUser copy.
	user 
		email: newEmail;
		username: newUsername.
	newPassword = self dummyPassword
		ifFalse: [
			user password: newPassword ].
	^ user