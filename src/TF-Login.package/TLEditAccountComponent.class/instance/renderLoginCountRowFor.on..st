rendering
renderLoginCountRowFor: user on: html

	html
		tableRow: [ 
			html tableData: [ self renderLoginCountLabel: html ].
			html tableData: [ self renderLoginCountFor: user on: html ]]