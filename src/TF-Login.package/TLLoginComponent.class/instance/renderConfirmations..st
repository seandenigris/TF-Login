rendering
renderConfirmations: html
	self renderRegistrationConfirmation: html.
	self renderAccountChangeConfirmation: html.
	self renderUserActionConfirmation: html.