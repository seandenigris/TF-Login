as yet unclassified
verifyPassword: pswd for: user
	user ifNil: [ ^false ].
	^(self userForId: user userId) verifyPassword: pswd