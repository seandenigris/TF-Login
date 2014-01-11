as yet unclassified
sendEmailChangeConfirmationEmail

	| regId newUser |
	regId := self loginComponent authenticationManager generateRegId.
	newUser := self newUser.
	self loginComponent authenticationManager addPendingAccountChange: newUser regId: regId. 
	Transcript cr; show:  (self confirmationURL: regId).
	^ self emailChangeConfirmationEmailSender
		value: (self confirmationURL: regId )
		value: newUser email
		value: (self application preferenceAt: #confirmationTimeoutMinutes)
		value: newUser
