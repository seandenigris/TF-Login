as yet unclassified
renderForgotPasswordButton: html

	html button
		bePush;
		id: 'forgotpasswordbtn';
		onClick: ( (html jQuery class: 'loginform') load html: [ :h |
			h render: (self forgotPasswordComponent loginComponent: self mailSender: [])]);
		with: 'Forgot password' 