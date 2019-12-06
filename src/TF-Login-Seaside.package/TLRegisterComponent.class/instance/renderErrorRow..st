rendering
renderErrorRow: html
	userExists
		ifTrue: [ 
			self renderUsernameExistsErrorRow: html.
			^ self ].
	passwordsMatch
		ifFalse: [ 
			self renderPasswordMismatchErrorRow: html.
			^ self ].
	captchaVerified
		ifFalse: [ 
			self renderCaptchaIncorrectErrorRow: html.
			^ self ].
	passwordValidationError isNil
		ifFalse: [ 
			self renderPasswordInvalidErrorRow: html.
			^ self ].
	passwordEmpty
		ifTrue: [ 
			self renderPasswordEmptyErrorRow: html.
			^ self ]