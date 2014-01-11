rendering
renderUsernameEntryRow: user on: html
		html
			tableRow: [ 
				html tableData: [ self renderUsernameLabel: html ].
				html tableData: [ self renderUsernameInputFor: user on: html ]]
					