rendering
renderUsernameInputFor: user on: html

	(html textInput)
		id: 'editacctusername';
		class:
				(self allowUsernameChange
						ifTrue: [ 'editaccountinput' ]
						ifFalse: [ 'editaccountroinput' ]);
		readonly: self allowUsernameChange not;
		callback: [ :v | newUsername := v ];
		with: user username