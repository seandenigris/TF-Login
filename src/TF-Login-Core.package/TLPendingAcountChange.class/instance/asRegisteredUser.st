as yet unclassified
asRegisteredUser
	^ (TLRegisteredUser username: self username encpswd: self encryptedPassword email: self email)
		lastLogin: self lastLogin;
		lastLoginFrom: self lastLoginFrom;
		applicationProperties: self applicationProperties;
		yourself
		