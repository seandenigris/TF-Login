rendering
renderUsernameExistsErrorOn: html

	usernameExists
		ifTrue: [ 
			(html div)
				class: 'autherror';
				id: 'editacctusernameexists';
				with: 'That username is already taken.. Try again' ]