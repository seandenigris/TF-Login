rendering
renderButtonsOn: html

	(html button)
		id: 'editacctcancelbtn';
		class: 'editaccountcancelbutton';
		callback: [ self cancel ];
		with: 'Cancel'.
	(html button)
		id: 'editacctokbtn';
		class: 'editaccountokbutton';
		callback: [ self save ];
		with: 'Ok'