as yet unclassified
renderContentOn: html

	self session user isNil 
		ifTrue: [
			html render: loginComponent ]
		ifFalse: [
			html form
				class: 'loggedinform';
				with: [
					html button
						id: 'editaccountbtn';
						callback: [ self call: (TLEditAccountComponent loginComponent: loginComponent)  ];
						with: 'My Account'.
					html button
						id: 'logoutbtn';
						callback: [ loginComponent logout ];
						with: 'Logout']]