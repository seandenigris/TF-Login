as yet unclassified
renderButtons: html

	(html button)
		bePush;
		id: 'forgotusernameokbtn';
		onClick: ((html jQuery this parent parent) load html: [ :h | 
			self send.
			h render: self usernameEmailSentComponent new ]);
		with: 'Ok'.
	(html button)
		bePush;
		id: 'forgotusernamecancelbtn';
		onClick: ((html jQuery this parent parent) load html: [ :h |
			h render: loginComponent ]);
		with: 'Cancel'