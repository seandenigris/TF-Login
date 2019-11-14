password-reset
resetPasswordComponent
	^ resetPasswordComponent ifNil: [ self defaultResetPasswordComponent ]