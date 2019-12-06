as yet unclassified
renderUsernameInput: html

	html span: 'Username: '.
	(html textInput)
		id: 'forgotpasswordusername';
		callback: [ :v | username := v ]