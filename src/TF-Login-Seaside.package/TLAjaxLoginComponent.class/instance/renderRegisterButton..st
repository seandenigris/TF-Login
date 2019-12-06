as yet unclassified
renderRegisterButton: html

	html button
		bePush;
		id: 'registerbtn';
		onClick: ((html jQuery class: 'loginform') load html: [ :h |
			h render: (self registerComponent loginComponent: self)]);
		with: 'Register'