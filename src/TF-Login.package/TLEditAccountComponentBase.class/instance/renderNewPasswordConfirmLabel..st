rendering
renderNewPasswordConfirmLabel: html

	(html passwordInput)
		id: 'editacctnewpswdconf';
		callback: [ :v | newPasswordConfirm := v ];
		class: 'editaccountinput';
		exampleText: newPasswordConfirm