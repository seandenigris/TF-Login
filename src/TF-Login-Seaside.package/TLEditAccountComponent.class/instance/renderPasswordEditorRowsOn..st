rendering
renderPasswordEditorRowsOn: html

	html
		tableRow: [ 
			html tableData: [ self renderNewPasswordLabel: html ].
			html tableData: [ self renderNewPasswordInput: html ] ].
	html
		tableRow: [ 
			html tableData: [ self renderConfirmNewPasswordLabel:  html ].
			html tableData: [ self renderConfirmNewPasswordInput: html ] ]