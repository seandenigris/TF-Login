as yet unclassified
registrationConfirmationEmailSender
	^ RegistrationConfirmationEmailSender ifNil: [ [ :url :email :timeout | ] ]