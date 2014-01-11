rendering
renderUsernameExistsErrorRow: html

	html
		tableRow: [ 
			(html tableData)
				colSpan: 2;
				with: [ self renderUsernameExistsError: html ] ]