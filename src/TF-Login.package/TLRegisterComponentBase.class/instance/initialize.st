as yet unclassified
initialize
	super initialize.
	self setRecaptchaComponent.
	captchaVerified  := true.
	userExists  := false.
	passwordsMatch := true.
	passwordEmpty := false.
