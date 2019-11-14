as yet unclassified
renderContentOn: html
	html form
		class: 'forgotpasswordform';
		with: [ 
			html span: 'Enter your username below and we will send an email message to you that will allow you to set a new password.'.
			html div
				class: 'forgotpassworddiv';
				with: [
					self renderUsernameInput: html. 
					self renderButtons: html ]]