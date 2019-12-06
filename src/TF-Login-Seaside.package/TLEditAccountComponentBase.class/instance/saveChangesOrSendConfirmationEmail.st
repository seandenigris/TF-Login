as yet unclassified
saveChangesOrSendConfirmationEmail
	| oldUser |
	oldUser := self loginComponent authenticationManager userForUsername: self session user username.
	(self confirmEmailChangeViaEmail and: [ oldUser email ~= newEmail ])
		ifTrue: [ 
			emailResult := self confirmAccountChangesViaEmail
				ifTrue: [ self sendAccountChangeConfirmationEmail ]
				ifFalse: [ self sendEmailChangeConfirmationEmail ] ]
		ifFalse: [ 
			self confirmAccountChangesViaEmail
				ifTrue: [ emailResult := self sendAccountChangeConfirmationEmail ]
				ifFalse: [ 
					self saveChanges.
					self answer ] ]