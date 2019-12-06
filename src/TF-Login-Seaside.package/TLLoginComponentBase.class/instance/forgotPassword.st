password-reset
forgotPassword
	self call: (self forgotPasswordComponent  loginComponent: self mailSender: passwordResetEmailSender) 