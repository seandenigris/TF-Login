as yet unclassified
verifyPassword: aPassword
	^ self verifyEncryptedPassword: (self encryptPassword: aPassword)
