rendering
renderNewPasswordInput: html

	html passwordInput
		id: 'resetpswd';
		callback: [ :v | pswd := v ]
