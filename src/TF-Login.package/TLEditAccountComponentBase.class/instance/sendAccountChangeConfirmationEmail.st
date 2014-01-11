as yet unclassified
sendAccountChangeConfirmationEmail

	| regId  newUser |
	regId := self loginComponent authenticationManager generateRegId.
	newUser := self newUser.
	self loginComponent authenticationManager addPendingAccountChange: newUser regId: regId. 
	^ self accountChangeConfirmationEmailSender
		value: (self confirmationURL: regId )
		value: newUser email
		value: (self application preferenceAt: #confirmationTimeoutMinutes)
		value: newUser
