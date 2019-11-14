as yet unclassified
renderButtons: html

	(html button)
		bePush;
		id: 'forgotpasswordokbtn';
		onClick: ((html jQuery this parent parent) load html: [ :h | 
			self send.
			h render: self passwordEmailSentComponent new ]);
		with: 'Ok'.
	(html button)
		bePush;
		id: 'forgotpasswordcancelbtn';
		onClick: ((html jQuery this parent parent) load html: [ :h |
			h render: loginComponent ]);
		with: 'Cancel'.
		