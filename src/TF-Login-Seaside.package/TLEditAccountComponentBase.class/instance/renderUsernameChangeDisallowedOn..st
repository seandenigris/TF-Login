rendering
renderUsernameChangeDisallowedOn: html

	usernameChangeDisallowed 
		ifTrue: [ 
			(html div)
				class: 'autherror';
				id: 'editacctusernamechangedisallowed';
				with: 'You are not allowed to change your username.' ]