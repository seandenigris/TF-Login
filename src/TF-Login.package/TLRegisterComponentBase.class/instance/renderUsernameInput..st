rendering
renderUsernameInput: html

	(html textInput)
		id: 'registeruser';
		callback: [ :v | user := v ];
		with: user