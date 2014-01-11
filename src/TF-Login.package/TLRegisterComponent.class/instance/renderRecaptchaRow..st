rendering
renderRecaptchaRow: html
	self useRecaptchaInRegistrationForm
		ifTrue: [ 
			html
				tableRow: [ 
					(html tableData)
						colSpan: 2;
						id: 'registercaptcha';
						with: captchaComponent ] ]