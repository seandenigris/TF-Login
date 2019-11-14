as yet unclassified
getUser: aUsername encryptedPassword: pswd ifAbsent: aBlock

	| user |
	user := self storageAdaptor userForUsername: aUsername.
	user ifNotNilDo: [ :u |
		(user verifyEncryptedPassword: pswd) ifFalse: [ user := nil ]].
	user isNil ifTrue: [ ^ aBlock value ].
	^user
