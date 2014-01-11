as yet unclassified
renderButtons: html

	(html button)
		id: 'forgotpasswordokbtn';
		callback: [ self send ];
		with: 'Ok'.
	(html button)
		id: 'forgotpasswordcancelbtn';
		callback: [ self cancel ];
		with: 'Cancel'.
		