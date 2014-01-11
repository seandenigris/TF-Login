rendering
renderFormContentFor: user on: html
	self renderErrorsOn: html.
	^ html
		table: [ 
			self renderUsernameEntryRow: user on: html.
			self renderLoginCountRowFor: user on: html.
			self renderLastLoginRowFor: user on: html.
			self renderEmailAddressRowFor: user on: html.
			self renderPasswordEditorRowsOn: html.
			self renderApplicationProperties: user on: html.
			self renderCurrentPasswordEntryRowOn: html.
			self renderButtonsRowOn: html ]