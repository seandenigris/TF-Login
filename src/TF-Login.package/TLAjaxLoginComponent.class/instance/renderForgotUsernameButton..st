as yet unclassified
renderForgotUsernameButton: html

	html button
		bePush;
		id: 'forgotusernamebtn';
		onClick: ( (html jQuery class: 'loginform') load html: [ :h |
			h render: (self forgotUsernameComponent loginComponent: self mailSender: [])]);
		with: 'Forgot username' 
