rendering
renderUsernameTextInput: html

	html textInput
		id: 'loginuser';
		onChange: ('enableLoginButton()');
		callback: [ :v | username := v ];
		with: self usernameFromCookie.
