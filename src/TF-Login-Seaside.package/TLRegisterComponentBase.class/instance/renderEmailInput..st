rendering
renderEmailInput: html

	(html textInput)
		id: 'registeremail';
		callback: [ :v | email := v ];
		with: email