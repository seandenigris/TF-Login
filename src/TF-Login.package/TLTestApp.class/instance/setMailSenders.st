as yet unclassified
setMailSenders
	loginComponent registrationConfirmationEmailSender: [ :url :email :timeout | 
		self
			sendRegistrationConfirmationEmailTo: email
			confirmUrl: url
			timeoutMinutes: timeout  ].
	loginComponent passwordResetEmailSender: [ :url :email :timeout |
		self
			sendPasswordResetUrl: url
			to: email
			timeout: timeout ].
	loginComponent usernameReminderEmailSender: [ :usernames :email | 
		self
			sendUsernameReminderFor: usernames
			to: email ].
	editAccountComponent emailChangeConfirmationEmailSender: [ :url :email :timeout :newUser |
		self
			sendEmailChangeConfirmationTo: email
			confirmUrl: url
			timeout: timeout
			newUser: newUser  ].
	editAccountComponent accountChangeConfirmationEmailSender: [ :url :email :timeout :newUser |
		self
			sendAccountChangeConfirmationTo: email
			confirmUrl: url
			timeout: timeout
			newUser: newUser ].

	ajaxLoginComponent registrationConfirmationEmailSender: [ :url :email :timeout | 
		self
			sendRegistrationConfirmationEmailTo: email
			confirmUrl: url
			timeoutMinutes: timeout  ].
	ajaxLoginComponent passwordResetEmailSender: [ :url :email :timeout |
		self
			sendPasswordResetUrl: url
			to: email
			timeout: timeout ].
	ajaxLoginComponent usernameReminderEmailSender: [ :usernames :email | 
		self
			sendUsernameReminderFor: usernames
			to: email ].
	
	
