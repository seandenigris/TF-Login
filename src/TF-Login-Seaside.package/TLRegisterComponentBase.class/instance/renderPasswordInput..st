rendering
renderPasswordInput: html

	(html passwordInput)
		id: 'registerpswd';
		callback: [ :v | pswd := v ];
		with: pswd