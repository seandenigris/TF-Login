rendering
renderFormContent: html
	html
		table: [ 
			self renderErrorRow: html.
			self renderUsernameRow: html.
			self renderPasswordRow: html.
			self renderConfirmPasswordRow: html.
			self renderEmailRow: html.
			self renderRecaptchaRow: html.
			self renderButtonsRow: html ]