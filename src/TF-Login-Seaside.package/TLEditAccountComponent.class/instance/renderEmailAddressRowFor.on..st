rendering
renderEmailAddressRowFor: user on: html
	html
		tableRow: [ 
			html tableData: 'Email address: '.
			html tableData: [ 
					(html textInput)
						id: 'editacctemail';
						class: 'editaccountinput';
						callback: [ :v | newEmail := v ];
						with: user email ] ]