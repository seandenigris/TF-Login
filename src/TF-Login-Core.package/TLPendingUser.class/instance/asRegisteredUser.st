as yet unclassified
asRegisteredUser 
	^ (TLRegisteredUser
		username: (self username)
		encpswd: (self encryptedPassword)
		email: (self email))
		userId: (self userId);
		applicationProperties: self applicationProperties;
		yourself