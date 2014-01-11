as yet unclassified
renderContentOn: html
	html form
		class: 'forgotusernameform';
		with: [ 
			html span: 'Enter your email address below and we will send an email message to you containing your username.'.
			html div
				class: 'forgotusernamediv';
				with: [
					self renderEmailInput: html.
					self renderButtons: html ]]