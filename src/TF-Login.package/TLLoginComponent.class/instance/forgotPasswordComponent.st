password-reset
forgotPasswordComponent
	^ forgotPasswordComponent ifNil: [self defaultForgotPasswordComponent]