rendering
renderSuccessOkButton: html

	html button
		id: 'passwordresetsuccessokbtn';
		callback: [ self session redirectTo: (self session baseUrl) ];
		with: 'Ok'
