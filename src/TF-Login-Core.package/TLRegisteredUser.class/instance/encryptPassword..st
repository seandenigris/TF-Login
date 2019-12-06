as yet unclassified
encryptPassword: aPassword
	^ (Base64MimeConverter mimeEncode: (ReadStream on: (SHA1 hashMessage: aPassword,userId))) contents.
