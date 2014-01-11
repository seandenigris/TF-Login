as yet unclassified
renderPopupTestButton: html

	html form
		with: [
			html submitButton
				style: 'font-size: 0.8em; margin-left: 10px; margin-bottom: 10px; ';
				callback: [ self popup: true ];
				with: 'Try the AJAX pop-up login dialog']