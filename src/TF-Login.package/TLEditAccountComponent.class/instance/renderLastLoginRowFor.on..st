rendering
renderLastLoginRowFor: user on: html
	html
		tableRow: [ 
			html tableData: 'Last login: '.
			html tableData: [ self renderLastLoginFor: user On: html ] ]