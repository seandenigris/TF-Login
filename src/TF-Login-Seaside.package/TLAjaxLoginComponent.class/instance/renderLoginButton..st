as yet unclassified
renderLoginButton: html

	html button
		bePush;
		id: 'loginbtn';
		disabled: true;
		onClick: ((html jQuery class: 'loginform') load serializeForm; html: [ :h |
			self login.
			self session user isNil
				ifFalse: [ 
					h div
						script: (h jQuery this script: [ :s | s callback: []]);
						with: 'Login successful' ]
				ifTrue: [
					h render: self ]]);
		with: 'Login'.
