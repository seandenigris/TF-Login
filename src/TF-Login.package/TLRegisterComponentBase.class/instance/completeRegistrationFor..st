rendering
completeRegistrationFor: pendingUser

	pendingUser isNil ifFalse: [ 
		(self loginComponent userRegistrationHandler value: pendingUser)
			ifTrue: [		
				self loginComponent sendRegistrationConfirmationEmail
					ifTrue: [
						(self loginComponent registrationConfirmationEmailSender
							value: (self loginComponent registrationConfirmationURL: pendingUser regId)
							value: pendingUser email
							value: (self application preferenceAt: #confirmationTimeoutMinutes))
								ifTrue: [
									self call: self loginComponent defaultRegistrationSubmittedComponent  new ]
								ifFalse: [
									self call: self loginComponent defaultRegistrationSubmitFailedComponent new ]]
					ifFalse: [
						self loginComponent registrationConfirmed: pendingUser regId ]]].
