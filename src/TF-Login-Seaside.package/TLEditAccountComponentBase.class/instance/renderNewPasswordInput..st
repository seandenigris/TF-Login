rendering
renderNewPasswordInput: html

	(html passwordInput)
		id: 'editacctnewpswd';
		callback: [ :v | newPassword := v ];
		class: 'editaccountinput';
		placeholder: newPassword