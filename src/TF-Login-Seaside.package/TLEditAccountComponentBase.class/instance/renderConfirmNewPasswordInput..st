rendering
renderConfirmNewPasswordInput: html

	(html passwordInput)
		id: 'editacctnewpswdconf';
		callback: [ :v | newPasswordConfirm := v ];
		class: 'editaccountinput';
		placeholder: newPasswordConfirm