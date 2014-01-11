as yet unclassified
setMailSenders
	loginComponent registrationConfirmationEmailSender: [ :url :email :timeout |  self class registrationConfirmationEmailSender value: url value: email value: timeout ].
	loginComponent passwordResetEmailSender: [ :url :email :timeout | self class passwordResetEmailSender value: url value: email value: timeout ].
	loginComponent usernameReminderEmailSender: [ :usernames :email | self class usernameReminderEmailSender value: usernames value: email ].
	editAccountComponent emailChangeConfirmationEmailSender: [ :url :email :timeout :newUser | ].
	editAccountComponent accountChangeConfirmationEmailSender: [ :url :email :timeout :newUser | ].
