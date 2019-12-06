rendering
renderConfirmPasswordRow: html
	html
		tableRow: [ 
			html tableData: [ self renderConfirmPasswordLabel: html ].
			html tableData: [ self renderConfirmPassword: html ] ]