as yet unclassified
describeOn: config
	<lint: 'Overrides super method without calling it' rationale: 'This is a should override' author: 'TF'>

	(config boolean: #sendRegistrationConfirmationEmail)
		group: #login;
		default: false;
		comment: 'Confirm registrations via email.'.
	(config integer: #confirmationTimeoutMinutes)
		group: #login;
		default: 10;
		comment: 'Minutes to wait after sending registration and password reset emails'.
	(config boolean: #useRecaptchaInRegistrationForm)
		group: #login;
		default: false;
		comment: 'Protect registration form against spam with reCAPTCHA'.
	(config boolean: #confirmEmailChangeViaEmail)
		group: #login;
		default: false;
		comment: 'Confirm email address changes by sending email to the new address'.
	(config boolean: #confirmAccountChangesViaEmail)
		group: #login;
		default: false;
		comment: 'Confirm all account changes by sending email to the (possibly new) address'.

	(config boolean: #allowEmptyPasswords)
		group: #login;
		default: false;
		comment: 'Allow empty passwords'.

	(config boolean: #allowUsernameChange)
		group: #login;
		default: false;
		comment: 'Allow users to change their username'.

	(config boolean: #allowRememberUsername)
		group: #login;
		default: false;
		comment: 'Allow users to remember their username in a cookie'.

	(config boolean: #allowAutomaticLogin)
		group: #login;
		default: false;
		comment: 'Allow users to remember their username and password in a cookie'.

	(config integer: #UsernamePasswordRememberDays)
		group: #login;
		default: 7;
		comment: 'Expiration period for username and password cookies'.

