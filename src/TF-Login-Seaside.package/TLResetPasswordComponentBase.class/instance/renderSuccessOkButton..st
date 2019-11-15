rendering
renderSuccessOkButton: html

	html button
		id: 'passwordresetsuccessokbtn';
		callback: [ self session requestContext redirectTo: (self session basicUrl) ];
		with: 'Ok'
