rendering
renderSetPasswordButton: html
							
	html button
		id: 'resetbtn';
		disabled: true;
		callback: [ self setNewPassword ];
		with: 'Set password'