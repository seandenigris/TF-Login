rendering
renderPasswordInput: html

	html passwordInput
		id: 'loginpswd';
		onChange: ('enableLoginButton()');
		callback: [ :v | pswd := v ];
		with: ''.
