rendering
renderButtons: html

	(html button)
		disabled: true;
		id: 'registerbtn';
		callback: [ self register ];
		with: 'Register'.
	(html button)
		disabled: false;
		id: 'cancelbtn';
		callback: [ self cancel ];
		with: 'Cancel'