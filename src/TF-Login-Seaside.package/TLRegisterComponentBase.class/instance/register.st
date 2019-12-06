as yet unclassified
register

	self setRecaptchaComponent.
	self useRecaptchaInRegistrationForm ifTrue: [
		captchaVerified  :=  self verifyReCaptcha ].

	userExists := (self loginComponent authenticationManager usernameExists: self username)
						or: [ self loginComponent authenticationManager usernameIsPending: self username].
	
	
	passwordEmpty := pswd isEmptyOrNil and: [ loginComponent allowEmptyPassword not ].
	
	passwordsMatch := (pswd = confpswd).
	
	passwordValidationError := (loginComponent validateNewPassword: pswd).
	
	((userExists not) & captchaVerified & passwordsMatch & passwordValidationError isNil & passwordEmpty not)
		ifTrue: [
			self completeRegistrationFor:  self addPendingUser.
			self answer ]
		