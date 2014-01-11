as yet unclassified
renderButtons: html

	(html button)
		bePush;
		disabled: true;
		id: 'registerbtn';
		onClick: ((html jQuery class: 'registerform') load serializeForm; html: [ :h |
			self register: h ]);
		with: 'Register'.
	(html button)
		bePush;
		disabled: false;
		id: 'cancelbtn';
		onClick: ((html jQuery class: 'registerform') load html: [ :h |
			h render: loginComponent ]);
		with: 'Cancel'