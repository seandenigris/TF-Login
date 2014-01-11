as yet unclassified
renderStats: html
	html div
		style: 'color: darkblue;margin-left: 10px; margin-bottom: 10px;';
		with: loginComponent authenticationManager allUsernames size asString, ' registered users.'