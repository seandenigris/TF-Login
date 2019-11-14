rendering
renderErrorRow: html
	self usernameMatchError
		ifTrue: [ ^ self renderUsernameMatchErrorRow: html ].
	self passwordMatchError
		ifTrue: [ ^ self renderPasswordMatchErrorRow: html ].
	self passwordEmptyError
		ifTrue: [ ^ self renderPasswordEmptyErrorRow: html ].
	self passwordValidationError
		ifTrue: [ ^ self renderPasswordValidationErrorRow: html ]