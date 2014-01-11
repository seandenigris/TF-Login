as yet unclassified
completeRegistrationFor: pendingUser on: html

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
									html render: self loginComponent defaultRegistrationSubmittedComponent  new ]
								ifFalse: [
									html render: self loginComponent defaultRegistrationSubmitFailedComponent new ]]
					ifFalse: [
						self loginComponent registrationConfirmed: pendingUser regId.
					 	html render: loginComponent ] ] ]