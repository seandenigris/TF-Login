as yet unclassified
getUser: aUsername password: pswd ifAbsent: aBlock

	| user |
	user := self storageAdaptor userForUsername: aUsername.
	user ifNotNilDo: [ :u |
		(user verifyPassword: pswd) ifFalse: [ user := nil ]].
	user isNil ifTrue: [ ^ aBlock value ].
	^user
