rendering
renderUserActionConfirmation: html

	userActionConfirmed isNil
		ifTrue: [ ^ self ].
	userActionConfirmed
		ifFalse: [ 
			(html div)
				class: 'loginconffailed';
				with: [ 
							html
								span: 'Requested action failed. ';
								span: 'Perhaps you waited too long to confirm after receiving the email.' ] ].
	userActionConfirmed := nil