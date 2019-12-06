as yet unclassified
setNewPassword
	| user modifiedUser |
	
	self usernameMatchError: username asLowercase ~= pendingPasswordReset username asLowercase.
	self passwordMatchError:  pswd ~= pswdconf.
	self passwordValidationError: (loginComponent validateNewPassword: pswd).
	self passwordEmptyError: (pswd isEmptyOrNil and: [ loginComponent allowEmptyPassword not ]).
	self hasError
		ifTrue: [ ^ self ]
		ifFalse: [
			user := self loginComponent authenticationManager userForUsername: username.
			modifiedUser := user copy.
			modifiedUser password: pswd.
			self loginComponent authenticationManager updateUser: modifiedUser.
			resetSuccessful := true ]