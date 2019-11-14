rendering
renderAuthenticationError: html
	self authenticationError
		ifFalse: [ ^ self ].
	authenticationError := false.
	(html div)
		class: 'autherror';
		with: self authenticationErrorText