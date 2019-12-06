as yet unclassified
save
	self reset.
	(self passwordIsInvalid or: [ self newPasswordConfirmMismatch or: [ self newUsernameExists or: [ self validatePassword isNil not 
				or: [ self usernameChangeDisallowed ]]]])
		ifTrue: [ ^self ]
		ifFalse: [
			self saveChangesOrSendConfirmationEmail.
			loginComponent resetLoginCookies]