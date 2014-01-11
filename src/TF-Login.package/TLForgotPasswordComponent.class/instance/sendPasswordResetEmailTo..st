as yet unclassified
sendPasswordResetEmailTo: username
	| user resetId |
	(user := self loginComponent authenticationManager userForUsername: username) notNil
		ifFalse: [ ^ self ].
	resetId := self loginComponent authenticationManager generateRegId.
	self loginComponent authenticationManager addPendingPasswordResetUser: user regId: resetId.
	emailSender
		value: (self confirmationURL: resetId)
		value: user email
		value: (self application preferenceAt: #confirmationTimeoutMinutes)