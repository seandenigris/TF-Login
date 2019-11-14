as yet unclassified
renderButtons: html

	(html submitButton)
		id: 'forgotusernameokbtn';
		callback: [ self send ];
		with: 'Ok'.
	(html submitButton)
		id: 'forgotusernamecancelbtn';
		callback: [ self cancel ];
		with: 'Cancel'