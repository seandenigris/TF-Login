rendering
renderRememberUsernameCheckbox: html

	html checkbox
		value: (self usernameCookie isNil not);
		callback: [ :v |  self rememberUsername: v ];
		with: [ 
			html span
				class: 'loginformtext';
				id: 'rememberusernametext';
				with: 'Remember my username on this computer.']