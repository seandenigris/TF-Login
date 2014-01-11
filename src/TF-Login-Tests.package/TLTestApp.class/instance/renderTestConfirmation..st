as yet unclassified
renderTestConfirmation: html
	self testConfirmed
		ifFalse: [ ^ self ].
	(html div)
		style: 'font-weight: 700; margin-left: 10px';
		with: 'Test confirmation received. You have been logged in.'.
	self testConfirmed: false